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
disp('Run roslaunch in the terminal then press enter to continue: ')
rostopic list;
rosshutdown;