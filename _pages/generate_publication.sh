#!/bin/bash

# Input and Output Files
INPUT_FILE="publications.txt"
OUTPUT_FILE="publications.html"

# Add Front Matter
echo '---' > $OUTPUT_FILE
echo 'layout: archive' >> $OUTPUT_FILE
echo 'title: "Publications"' >> $OUTPUT_FILE
echo 'permalink: /publications/' >> $OUTPUT_FILE
echo 'author_profile: true' >> $OUTPUT_FILE
echo '---' >> $OUTPUT_FILE
echo '' >> $OUTPUT_FILE

# Start HTML File
echo '<!DOCTYPE html>' >> $OUTPUT_FILE
echo '<html lang="en">' >> $OUTPUT_FILE
echo '<head>' >> $OUTPUT_FILE
echo '    <meta charset="UTF-8">' >> $OUTPUT_FILE
echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' >> $OUTPUT_FILE
echo '    <style>' >> $OUTPUT_FILE
echo '        body { font-family: Arial, sans-serif; line-height: 1.6; }' >> $OUTPUT_FILE
echo '        .publication { display: flex; align-items: flex-start; margin-bottom: 20px; }' >> $OUTPUT_FILE
echo '        .text { flex: 3; margin-right: 20px; }' >> $OUTPUT_FILE
echo '        .image { flex: 1; text-align: center; }' >> $OUTPUT_FILE
echo '        .image img { max-width: 100%; height: auto; }' >> $OUTPUT_FILE
echo '        a { text-decoration: none; color: #007BFF; }' >> $OUTPUT_FILE
echo '        a:hover { text-decoration: underline; }' >> $OUTPUT_FILE
echo '    </style>' >> $OUTPUT_FILE
echo '</head>' >> $OUTPUT_FILE
echo '<body>' >> $OUTPUT_FILE

# Variables for parsing
declare -A LINKS
LINK_SECTION=false

# Process Each Block of Publications
while IFS= read -r line; do
    if [[ $line == Title* ]]; then
        TITLE="${line#Title: }"
    elif [[ $line == Authors* ]]; then
        AUTHORS="${line#Authors: }"
        # Highlight Moji Shi in bold
        AUTHORS=$(echo "$AUTHORS" | sed 's/Moji Shi/<strong>Moji Shi<\/strong>/g')
    elif [[ $line == Year* ]]; then
        YEAR="${line#Year: }"
    elif [[ $line == Conference* ]]; then
        CONFERENCE="${line#Conference: }"
    elif [[ $line == links:* ]]; then
        LINK_SECTION=true
        LINKS=()  # Reset the links array
    elif $LINK_SECTION && [[ $line == "    "* ]]; then
        KEY=$(echo "$line" | cut -d':' -f1 | xargs)
        VALUE=$(echo "$line" | cut -d':' -f2- | xargs)
        LINKS["$KEY"]=$VALUE
    elif [[ $line == Image* ]]; then
        IMAGE="${line#Image: }"
        LINK_SECTION=false

        # Output HTML Block
        echo '<div class="publication">' >> $OUTPUT_FILE
        echo '    <div class="text">' >> $OUTPUT_FILE
        echo "        $AUTHORS ($YEAR) <br>" >> $OUTPUT_FILE
        echo "        <strong>$TITLE</strong> <br>" >> $OUTPUT_FILE
        echo "        <em>$CONFERENCE</em>. <br>" >> $OUTPUT_FILE

        # Add links dynamically
        for LINK_NAME in "${!LINKS[@]}"; do
            echo "        <a href=\"${LINKS[$LINK_NAME]}\" target=\"_blank\">$LINK_NAME</a> / " >> $OUTPUT_FILE
        done

        echo '    </div>' >> $OUTPUT_FILE
        echo '    <div class="image">' >> $OUTPUT_FILE
        echo "        <img src=\"$IMAGE\" alt=\"Publication Image\">" >> $OUTPUT_FILE
        echo '    </div>' >> $OUTPUT_FILE
        echo '</div>' >> $OUTPUT_FILE
    fi
done < "$INPUT_FILE"

# Close HTML File
echo '</body>' >> $OUTPUT_FILE
echo '</html>' >> $OUTPUT_FILE

echo "HTML layout generated in $OUTPUT_FILE"
