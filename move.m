classdef move < handle
    properties
        
    end
    
    methods
        function obj = move()
            
        end
        
        function testMove(obj, robot)
            controlOutput = rosmessage('geometry_msgs/Twist');
            controlOutput.Linear.X = 0.5;
            send(robot.cmd_vel, controlOutput);
        end
        
    end
end

