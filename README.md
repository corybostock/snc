# Sensors and Control Project 7: TurtleBots
## Contributors
- Cory Bostock 97117269
- Sabrina Emanouel 12618346

## Video Demos
- https://youtu.be/M7hM5_ZaH98
- https://youtu.be/vu9SNrBkweE

## How to run the code:
- gedit ~/.bashrc
- - at the bottom of the file add in this line of code to set the turtlebot model to waffle
- - export TURTLEBOT3_MODEL=waffle
- run the bashrc file
- - cd ~/catkin_ws
- - catkin_make
- - source devel/setup.bash 
- - source ~/.bashrc
- Open Matlab and open the turtleBotMain.m file to run the code

## Contributions
- Entire set up of Gazebo and interface between Matlab/ROS/Gazebo was completed by Cory. The control system design and implementation was also performed by Cory. There was a plan to implement a PID controller based on the visual servoing, unfortunately there were several technical difficulties and this plan was not possible. The version control and maintenance of the codebase was also monitored and completed by Cory. Matlab class set up and unit testing of functionality was finalised by Cory, who also produced the Turtlebot motion demonstration video as shown above. 
- Sabrina invested time into researching visual servoing and performing unit tests of visual detection code. Sabrina also completed the blue detection demonstration video shown above.
