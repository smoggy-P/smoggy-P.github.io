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
<li style="font-size:18px">We implemented <b>k-PRM</b> for front-end path searching and an iterative method for back-end corridor-based trajectory optimization. </li>
<li style="font-size:18px">My main contribution is implementing adjacent-list
graph, A* graph search algorithm, and optimizing time consumption for trajectory optimization method.</li>
</ul>
</td>
<td>
<img src="/images/kprm.gif" width="600" class="center"/>
</td>
</table>

---
## [Model predictive control for UAV collision avoidance](https://github.com/smoggy-P/MPC-Collision-Avoidance)


<table>
<td>
<ul>
<li style="font-size:18px">We designed a model predictive controller for UAV so that it can avoid obstacles.
Specifically, we designed <b>terminal cost and terminal set</b> for cost function, added <b>observer</b> to
predict unknown disturbance and strictly prove the <b>asymptotic stability</b> of the system. </li>
<li style="font-size:18px">My main contribution is setting up the dynamics of quadrotors, designing the luenberger observer and executing numerical experiments.</li>
</ul>
</td>
<td>
<img src="/images/mpc.gif" width="1000" class="center"/>
</td>
</table>

---
## Sensor fusion for pedestrian detection and tracking

<table>
<td>
<ul>
<li style="font-size:18px">I designed two methods for pedestrian detection and tracking using monocular camera and using the fusion between LiDAR and stereo camera.  </li>
<li style="font-size:18px">In the method of monocular camera, I make some assumptions about the relative position between camera and ground, generate 3D region proposals accordingly, and apply a pre-trained pedestrian classifier to identify pedestrians. In the method of sensor fusion, I apply DBSCAN clustering to the point cloud to give more accurate region proposals and then apply a pedestrian classifier here.</li>
</ul>
<td><img src="/images/fusion.gif" border=0></td>
<td><img src="/images/fusion+bird.gif" border=0></td>
</td>
</table>

---
## [Dynamic programming for peak shaving problem](https://github.com/smoggy-P/Dynamic_Programming_Project)
- We designed a stochastic controller to solve **peak shaving problem** with dynamic
programming. Specifically, we discretize the state space and action space and model the system
into a Markov chain. Then we solve the dynamic programming given a time horizon to minimize
the cost.
- My main contribution is modeling the system dynamics into a markov chain and deriving the optimal control policy for the problem.
- We achieved grade 9.5/10 for this course project, one of the top groups.
  <img src="/images/dp.png" width="800" class="center"/>