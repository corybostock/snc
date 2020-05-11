%% Authors Cory Bostock Sabrina Emanouel
% Prep the workspace
close all
set(0,'DefaultFigureWindowStyle','docked')
clc
clf
clear

% Init ROS
% rosshutdown;
% rosinit;                                                                        % makes a ROS node and allows comms to ROS
% rostopic list;
% disp('Run roslaunch files in order, then continue the Matlab script: ')
% disp('roslaunch turtlebot3_gazebo multi_turtlebot3.launch ');
% dbstop at 16 in turtleBotMain;
% rostopic list;

% Subscribing and Publishing ROS Topics
guiderOdom = rossubscriber('/guider/odom');
guiderScan = rossubscriber('/guider/scan');
followerOdom = rossubscriber('/follower/odom');
followerScan = rossubscriber('/follower/scan');
guiderControl = rospublisher('/guider/cmd_vel', 'geometry_msgs/Twist');

controlOutput = rosmessage('geometry_msgs/Twist');
controlOutput.Linear.X = 0.5;

send(guiderControl, controlOutput);


% rosshutdown;