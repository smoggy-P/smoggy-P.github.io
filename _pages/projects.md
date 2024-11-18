---
layout: archive
title: "Projects"
permalink: /projects/
author_profile: true
---
---
## [An implementation of k-PRM path planner with corridor-based trajectory optimization](https://github.com/edmundwsy/RO47005-PDM-Final)
<table>
<td>
<ul>
<li>We implemented **k-PRM** for front-end path searching and an iterative method for back-end corridor-based trajectory optimization. </li>
<li>My main contribution is implementing adjacent-list
graph, A* graph search algorithm, and optimizing time consumption for trajectory optimization method.</li>
<li>We achieved grade 9.5/10 for this course project, one of the top groups.</li>
</ul>
</td>
<td>

<img src="/images/kprm.gif" width="600" class="center"/>

</td>
</tr>
</table>

---
## [Model predictive control for UAV collision avoidance](https://github.com/smoggy-P/MPC-Collision-Avoidance)
- We designed a model predictive controller for UAV so that it can avoid obstacles.
Specifically, we designed **terminal cost and terminal set** for cost function, added **observer** to
predict unknown disturbance and strictly prove the **asymptotic stability** of the system.
- My main contribution is setting up the dynamics of quadrotors, designing the luenberger observer and executing numerical experiments.
- We achieved grade 9.5/10 for this course project, one of the top groups.
  <img src="/images/mpc.gif" width="400" class="center"/>

---
## Sensor fusion for pedestrian detection and tracking
- I designed two methods for pedestrian detection and tracking using monocular camera and using the fusion between LiDAR and stereo camera. 
- In the method of monocular camera, I make some assumptions about the relative position between camera and ground, generate 3D region proposals accordingly, and apply a pre-trained pedestrian classifier to identify pedestrians. In the method of sensor fusion, I apply DBSCAN clustering to the point cloud to give more accurate region proposals and then apply a pedestrian classifier here.
- I achieved grade 9.7/10 for this course project, ranking 1/113 among all the students.

<table><tr>
<td><img src="/images/fusion.gif" border=0></td>
<td><img src="/images/fusion+bird.gif" border=0></td>
</tr></table>

---
## [Dynamic programming for peak shaving problem](https://github.com/smoggy-P/Dynamic_Programming_Project)
- We designed a stochastic controller to solve **peak shaving problem** with dynamic
programming. Specifically, we discretize the state space and action space and model the system
into a Markov chain. Then we solve the dynamic programming given a time horizon to minimize
the cost.
- My main contribution is modeling the system dynamics into a markov chain and deriving the optimal control policy for the problem.
- We achieved grade 9.5/10 for this course project, one of the top groups.
  <img src="/images/dp.png" width="800" class="center"/>