%% Authors Cory Bostock Sabrina Emanouel
% Prep the workspace
close all
set(0,'DefaultFigureWindowStyle','docked')
clc
clf
clear

% Init ROS
rosshutdown;
rosinit;                                                                        % makes a ROS node and allows comms to ROS
rostopic list;
disp('Run roslaunch files in order, then continue the Matlab script: ')
disp('roslaunch turtlebot3_gazebo multi_turtlebot3.launch ');
dbstop at 16 in turtleBotMain;
rostopic list;

% Making robot instances, subscribing and publishing ROS topics
guider      = robot('/guider/odom', '/guider/scan', '/guider/cmd_vel');
follower    = robot('/follower/odom', '/follower/scan', '/follower/cmd_vel');
motion      = move();

motion.testMove(guider);

rosshutdown;