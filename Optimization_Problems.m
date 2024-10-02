%% Initialization
clc;
clear;

% Define the Rosenbrock function
a = 1;
b = 100;
rosenbrock = @(x) (a - x(1))^2 + b * (x(2) - x(1)^2)^2;

% Global variable to store iteration data
global iteration_data;
iteration_data = [];

% Set optimization options using 'fminsearch'
options = optimset('OutputFcn', @outfun, 'Display', 'iter');

% Run the optimization using fminsearch (unconstrained optimizer)
x0 = [-1, 1]; % Initial guess
[x_opt, fval, exitflag, output] = fminsearch(rosenbrock, x0, options);

% Extract iteration data
iteration_history = iteration_data;

%% Data Visualization

% Plot the objective function value over iterations (Convergence Plot)
figure;
plot(iteration_history(:,1), iteration_history(:,2), 'LineWidth', 2);
xlabel('Iteration');
ylabel('Objective Function Value');
title('Convergence Plot of the Rosenbrock Function');
grid on;

% Create a 3D surface plot of the Rosenbrock function and overlay the optimization path
[X, Y] = meshgrid(-2:0.1:2, -1:0.1:3);
Z = (a - X).^2 + b * (Y - X.^2).^2;
figure;
surf(X, Y, Z, 'EdgeColor', 'none');
hold on;
plot3(iteration_history(:,3), iteration_history(:,4), iteration_history(:,2), 'r-o', 'LineWidth', 2);
xlabel('x');
ylabel('y');
zlabel('Objective Value');
title('Optimization Path on the Rosenbrock Function Surface');
grid on;
view(60, 30); % Adjust view angle for better perspective

% Create a histogram of the objective function values over iterations
figure;
histogram(iteration_history(:,2), 10);
xlabel('Objective Function Value');
ylabel('Frequency');
title('Histogram of Objective Values During Optimization');
grid on;

%% Output function for optimization data collection
function stop = outfun(x, optimValues, state)
    % Global variable to store the iteration data
    global iteration_data;
    stop = false;
    if strcmp(state, 'iter')
        % Collect iteration number, objective function value, and current solution
        iteration_data(end+1, :) = [optimValues.iteration, optimValues.fval, x];
    end
end
