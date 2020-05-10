%% Authors Cory Bostock Sabrina Emanouel
% Prep the workspace
close all
set(0,'DefaultFigureWindowStyle','docked')
clc
clf
clear

% Init ROS
rosshutdown;
rosinit;
rostopic list;
disp('Run roslaunch files in order, then continue the Matlab script: ')
disp('roslaunch turtlebot3_gazebo multi_turtlebot3.launch ');
dbstop at 15 in turtleBotMain;
rostopic list;
rosshutdown;