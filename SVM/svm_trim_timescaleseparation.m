%% Search for a specified operating point for the model - svm_oloop.
%
% This MATLAB script is the command line equivalent of the trim model
% tab in linear analysis tool with current specifications and options.
% It produces the exact same operating points as hitting the Trim button.

% MATLAB(R) file generated by MATLAB(R) 8.6 and Simulink Control Design (TM) 4.2.1.
%
% Generated on: 20-Feb-2016 17:18:20

%% Specify the model name
model = 'svm_oloop';

%% Create the operating point specification object.
opspec = operspec(model);

%% Set the constraints on the states in the model.
% - The defaults for all states are Known = false, SteadyState = true,
%   Min = -Inf, and Max = Inf.

% State (1) - svm_oloop/Standard Vehicle Model/Kinematics/p
% - Default model initial conditions are used to initialize optimization.
opspec.States(1).Known = [true;true;true];
opspec.States(1).SteadyState = [false;false;false];

% State (2) - svm_oloop/Standard Vehicle Model/Kinematics/v
% - Default model initial conditions are used to initialize optimization.
opspec.States(2).Known = [true;true;true];

%% Set the constraints on the inputs in the model.
% - The defaults for all inputs are Known = false, Min = -Inf, and
% Max = Inf.

% Input (1) - svm_oloop/n
% - Default model initial conditions are used to initialize optimization.

% Input (2) - svm_oloop/nw
% - Default model initial conditions are used to initialize optimization.
opspec.Inputs(2).Known = [true;true;true];

%% Set the constraints on the outputs in the model.
% - The defaults for all outputs are Known = false, Min = -Inf, and
% Max = Inf.

% Output (1) - svm_oloop/x
% - Default model initial conditions are used to initialize optimization.


%% Create the options
opt = findopOptions('OptimizerType','graddescent',...
    'DisplayReport','iter');

%% Perform the operating point search.
[op,opreport] = findop(model,opspec,opt);
