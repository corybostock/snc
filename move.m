classdef move < handle
    properties
        controlOutput;
    end
    
    methods
        function obj = move()
            obj.controlOutput = rosmessage('geometry_msgs/Twist');
        end
        
        function circle(obj, robot, linear, angular)
            obj.controlOutput.Linear.X = linear;
            obj.controlOutput.Angular.Z = angular;
            send(robot.cmd_vel, obj.controlOutput);
            pause(1.5);
        end
        
        function stop(obj, robot)
            obj.controlOutput.Linear.X = 0.0;
            obj.controlOutput.Angular.Z = 0.0;
            send(robot.cmd_vel, obj.controlOutput);
            pause(0.01);
        end
    end
end

