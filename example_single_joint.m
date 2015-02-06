%% Example to use this scripts
% This file is usefull to understand the functionality about all object
% included on this folder

%% Load object Motor
% Set all information about motor and robot when you would like to
% experiments
joint = Motor('experiments','iCubGenova01','leg','right','hip','pitch');

%% Load from file measure of friction
joint = joint.loadIdleMeasure('idle-2F',10);

%% Plot Friction
%Counter figures
if ~exist('counter','var')
    counter = 1;
end
% FIGURE - Friction data and estimation
joint.friction.savePictureToFile(joint.path, counter);
%counter = counter + 1;
joint.friction  % print information about friction
clear counter;