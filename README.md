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

## Requirements

- MATLAB (no extra toolboxes needed)

## How to Use

1. Clone the project:
   ```bash
   git clone https://github.com/yourusername/optimization-visualization.git

**Convergence Plot**


**3D Surface Plot**


**Histogram**

## Future Improvements
In the future, we can explore more complex optimization problems and improve the visualizations.



