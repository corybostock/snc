%% Authors Cory Bostock Sabrina Emanouel
% Prep the workspace
close all
set(0,'DefaultFigureWindowStyle','docked')
clc
clf
clear

% Init ROS
% rosshutdown;
% rosinit;                                                                     % makes a ROS node and allows comms to ROS
% rostopic list;
% disp('Run roslaunch files in order, then continue the Matlab script: ')
% disp('roslaunch turtlebot3_gazebo multi_turtlebot3.launch ');
% input('Press enter to continue after running the roslaunch file: ');

% Making robot instances, subscribing and publishing ROS topics
guider      = robot('/guider/odom', '/guider/scan', '/guider/cmd_vel');
follower    = robot('/follower/odom', '/follower/scan', '/follower/cmd_vel');
motion      = move();

% Turtlebot control
disp('Moving guider: ');
motion.circle(guider, 1.0, 0.5);
input('Press enter to move to next stage: ');
motion.stop(guider);
motion.stop(follwer);
pause(0.7);

disp('Moving guider: ');
motion.circle(guider, 1.5, -1.0);
input('Press enter to move to next stage: ');
motion.stop(guider);
motion.stop(follwer);
pause(0.7);

disp('Moving guider: ');
motion.circle(guider, 1.5, 1.0);
input('Press enter to move to next stage: ');
motion.stop(guider);
motion.stop(follwer);
pause(0.7);

disp('Moving guider: ');
motion.circle(guider, -1.0, -0.5);
input('Press enter to move to next stage: ');
motion.stop(guider);
motion.stop(follwer);
pause(0.7);

disp('End of demonstration')

% rosshutdown;