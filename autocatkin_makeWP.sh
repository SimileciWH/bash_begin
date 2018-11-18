#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : autocatkin_makeWP.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-17 16:02:27
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================
source ~/.bashrc
sudo apt-get update
sudo apt-get install -y python-wstool python-rosdep ninja-build

cd ~/catkin_ws
catkin_make 
source ~/catkin_ws/devel/setup.bash
read -p "press any key to continue..."

cd ~/catkin_new 
catkin_make 
source ~/catkin_new/devel/setup.bash
read -p "press any key to continue..."

cd ~/ROS_Library/cartographer 
rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y
catkin_make_isolated --install --use-ninja 

read -p "press any key to continue..."

echo "catkin_new and catkin_ws cartographer are all finish...."
