# Data Analysis and Visualization for Optimization Problems

This project uses MATLAB to run an optimization algorithm, collect data, and create visualizations of the results. We optimize a function called the **Rosenbrock function** and show how the values change over time.

## Project Overview

In this project, we:
- Use MATLAB’s `fminsearch` to minimize the Rosenbrock function.
- Collect data from each step of the optimization process.
- Create the following visualizations:
  - **Convergence Plot**: Shows how the objective function value decreases over time.
  - **3D Surface Plot**: Displays the shape of the Rosenbrock function and the path taken by the optimizer.
  - **Histogram**: Shows the distribution of the objective values during the optimization process.

## Problem Description

We optimize the **Rosenbrock function**, which is:
f(x, y) = (a - x)^2 + b(y - x^2)^2


where `a = 1` and `b = 100`. This is a common test problem used for optimization algorithms.

## Features

- **Optimization Algorithm**: Uses `fminsearch` to find the minimum of the function.
- **Data Collection**: Tracks the values of the function and parameters at each step.
- **Visualizations**:
  - **Convergence Plot**: Shows how the optimization improves with each step.
  - **3D Surface Plot**: Shows the function’s surface and the optimization path.
  - **Histogram**: Shows how the objective values are distributed.


**Convergence Plot**
![convergence](https://github.com/user-attachments/assets/839b08b5-ce5e-4688-8a5d-50e7fee98139)


**3D Surface Plot**
![cover](https://github.com/user-attachments/assets/62b881a7-4b31-4f61-8cef-dd1bc145f3c8)


**Histogram**
![his](https://github.com/user-attachments/assets/4d3ec7d1-6139-401d-98f1-68885033ff8a)


## Future Improvements
In the future, we can explore more complex optimization problems and improve the visualizations.



