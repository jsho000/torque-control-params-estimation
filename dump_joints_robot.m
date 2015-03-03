%% Example to use this scripts
% This file is usefull to understand the functionality about all object
% included on this folder

%% Load object Motor
% Set all information about motor and robot when you would like to
% experiments
experiment_type = 'FrictionIdentification';
robot = Robot('iCubGenova03');
% Setup robot configuration:
% Variables:
% - worldRefFrame
% - robot_fixed
robot = robot.setConfiguration('root_link','true');

%% Add motors to test
robot = robot.addMotor('leg','left','hip','roll');
robot = robot.setInLastRatio(40,8000);
robot.saveInLastParameters();
robot = robot.addMotor('leg','right','hip','roll');
robot = robot.setInLastRatio(40,8000);
robot.saveInLastParameters();
robot = robot.addMotor('leg','left','ankle','roll');
robot = robot.setInLastRatio(40,8000);
robot.saveInLastParameters();
robot = robot.addMotor('leg','right','ankle','roll');
robot = robot.setInLastRatio(40,8000);
robot.saveInLastParameters();

%%% TODO
% Add coupled joints
%robot = robot.addCoupledJoints('torso');

%% Configure computer
% Set all variables:
% - If true, automatic set yarp namespace
% - codyco-superbuild folder
robot.configure('false','/Users/Raffaello/iit/codyco-superbuild');

%% Open Simulink
open([experiment_type '.slx']);