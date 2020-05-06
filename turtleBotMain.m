%% Authors Cory Bostock Sabrina Emanouel
% Prep the workspace

close all
set(0,'DefaultFigureWindowStyle','docked')
clc
clf
clear

rosshutdown;
rosinit;
rostopic list;
disp('Run roslaunch in the terminal then press enter to continue: ');
% roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch
rostopic list;
rosshutdown;