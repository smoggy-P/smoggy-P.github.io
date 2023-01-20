---
layout: archive
title: "Projects"
permalink: /projects/
author_profile: true
---
---
## [An implementation of k-PRM path planner with corridor-based trajectory optimization](https://github.com/edmundwsy/RO47005-PDM-Final)
- We implemented **k-PRM** for front-end path searching and an iterative method for back-end
corridor-based trajectory optimization. 
- My main contribution is implementing adjacent-list
graph, A* graph search algorithm, and optimizing time consumption for trajectory optimization method.
- We achieved grade 9.5/10 for this course project, one of the top groups.

  <img src="/images/kprm.gif" width="400" class="center"/>

---
## [Model predictive control for UAV collision avoidance](https://github.com/smoggy-P/MPC-Collision-Avoidance)
- We designed a model predictive controller for UAV so that it can avoid obstacles.
Specifically, we designed **terminal cost and terminal set** for cost function, added **observer** to
predict unknown disturbance and strictly prove the **asymptotic stability** of the system.
- My main contribution is setting up the dynamics of quadrotors, designing the luenberger observer and executing numerical experiments.
- We achieved grade 9.5/10 for this course project, one of the top groups.
  <img src="/images/mpc.gif" width="400" class="center"/>
---
## [Dynamic programming for peak shaving problem](https://github.com/smoggy-P/Dynamic_Programming_Project)
- We designed a stochastic controller to solve **peak shaving problem** with dynamic
programming. Specifically, we discretize the state space and action space and model the system
into a Markov chain. Then we solve the dynamic programming given a time horizon to minimize
the cost.
- My main contribution is modeling the system dynamics into a markov chain and deriving the optimal control policy for the problem.
- We achieved grade 9.5/10 for this course project, one of the top groups.
  <img src="/images/dp.png" width="800" class="center"/>