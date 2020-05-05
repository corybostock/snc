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
system('roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch');
rostopic list;
input('Press enter to terminate ros: ')
rosshutdown;