classdef robot < handle
    properties
        odom;
        scan;
        cmd_vel;
    end
    
    methods
        function obj = robot(odom,scan,cmd_vel)
            % Subscribing and publishing ROS topics
            obj.odom    = rossubscriber(odom);
            obj.scan    = rossubscriber(scan);
            obj.cmd_vel = rospublisher(cmd_vel, 'geometry_msgs/Twist');
        end
    end
end

