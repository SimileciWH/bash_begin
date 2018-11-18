#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin05.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-15 16:35:28
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================
#set -x
#set -n 
ROSdistro=""
echo -e "Input ROS version :  melodic || kinetic || jade || indigo? \n"
read ROSdistro
function installRos()
{
	echo "Now start to install ROS automatic, do not shutdown this windows!"
	sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
	sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
	while [ $? -ne 0 ]
	do
		echo "add key failure!!, try again... /n"
		sleep 10
		sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
	done
	sudo apt update
	sudo apt-get install -y ros-$ROSdistro-desktop-full
	while [ $? -ne 0 ]
	do
		echo -e "Install desktop-full failure, try again.../n"
		sleep 10
		sudo apt-get install -y ros-$ROSdistro-desktop-full
	done
	sudo rosdep init
	rosdep update
	while [ $? -ne 0 ]
	do
		echo -e "rosdep update failure, try again... /n"
		sleep 10
		rosdep update
	done
    echo "#config ros system env" >> ~/.bashrc
	echo "source /opt/ros/$ROSdistro/setup.bash" >> ~/.bashrc
	source ~/.bashrc
	sudo apt-get install -y ros-$ROSdistro-sophus
	sudo apt-get install -y ros-$ROSdistro-octomap
	sudo apt-get install -y ros-$ROSdistro-ompl
	
	sudo apt-get install -y ros-$ROSdistro-moveit-commander ros-$ROSdistro-moveit-experimental ros-$ROSdistro-moveit-kinematics ros-$ROSdistro-moveit-planners
	sudo apt-get install -y ros-$ROSdistro-moveit-ros ros-$ROSdistro-moveit-plugins ros-$ROSdistro-moveit-setup-assistant ros-$ROSdistro-moveit-runtime
	while [ $? -ne 0 ]
	do
		echo "Install moveit failure!!, try again... /n"
		sleep 10
		sudo apt-get install -y ros-$ROSdistro-moveit-commander ros-$ROSdistro-moveit-experimental ros-$ROSdistro-moveit-kinematics ros-$ROSdistro-moveit-planners
		sudo apt-get install -y ros-$ROSdistro-moveit-ros ros-$ROSdistro-moveit-plugins ros-$ROSdistro-moveit-setup-assistant ros-$ROSdistro-moveit-runtime
	done
	sudo apt-get install -y  python-rosinstall python-rosinstall-generator python-wstool build-essential
	echo -e "Install ROS sucessfully! \n"
	return 0
}
installRos
