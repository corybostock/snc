classdef robot < handle
    properties
        odom;
        scan;
        cmd_vel;
        camera;
    end
    
    methods
        function obj = robot(odom,scan,cmd_vel, cam)
            % Subscribing and publishing ROS topics
            obj.odom    = rossubscriber(odom);
            obj.scan    = rossubscriber(scan);
            obj.camera  = rossubscriber(cam);
            obj.cmd_vel = rospublisher(cmd_vel, 'geometry_msgs/Twist');
        end
        
        function updateImage(obj)
            img = readImage('/guider/mybot/camera1/image_raw');
            imshow(img);
        end
        
    end
end

