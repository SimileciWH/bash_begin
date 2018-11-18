#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : InstallROS_library.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-16 14:44:27
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================
sudo apt-get update
cp -r ~/Downloads/myUbuntu1804Backup/ROS_Library ~
cp -r ~/Downloads/myUbuntu1804Backup/catkin_ws ~
cp -r ~/Downloads/myUbuntu1804Backup/catkin_new ~
cp -r ~/Downloads/myUbuntu1804Backup/Documents ~
cp -r ~/Downloads/myUbuntu1804Backup/simileciwh_Library ~
cp -r ~/Downloads/myUbuntu1804Backup/software ~
cp -r ~/Downloads/myUbuntu1804Backup/ws_moveit ~
sudo cp  ~/Downloads/myUbuntu1804Backup/hosts /etc

sudo apt-get install -y libudev-dev pyqt5-dev-tools libspnav-dev libbluetooth-dev flex byacc bison mawk gawk libglew-dev
sudo apt-get install -y libftdi-dev
#slove Could NOT find SDL (missing: SDL_LIBRARY SDL_INCLUDE_DIR)
sudo apt-get install -y libsdl-image1.2-dev
sudo apt-get install -y libsdl-dev
sudo apt-get install -y libuvc-dev


echo -e "install libusb \n"
cd ~/ROS_Library/libusb-1.0.22
./configure
sudo make 
make check
sudo make install 
echo -e "install libusb finish!!! \n"

read -p "input soething to continue..." breakpoint

echo -e "install cwiid lib \n"
cd ~/ROS_Library/cwiid-master
./configure
sudo make
sudo make install
echo -e "install cwiid lib finish!!! \n"

read -p "input soething to continue..." breakpoint

echo -e "install eigen lib \n"
cd ~/ROS_Library/eigen
mkdir build_dir
cd build_dir 
cmake ..
sudo make install 
echo -e "install eigen finish!!! \n"

read -p "input soething to continue..." breakpoint

echo -e "install fcl lib \n"
cd ~/ROS_Library/fcl_0.5.0.orig/fcl-0.5.0/
mkdir build 
cd build 
cmake ..
make -j4
sudo make install 
echo -e "install fcl finish!!! \n"

read -p "input soething to continue..." breakpoint

echo -e "install libfreenect lib \n"
cd ~/ROS_Library/libfreenect-ros-devel/
sudo apt-get install -y cmake pkg-config libusb-1.0-0-dev libxmu-dev libxi-dev 
mkdir build 
cd build 
cmake -L ..
make 
sudo make install 
echo -e "install libfreenect lib finish!!! \n"

read -p "input soething to continue..." breakpoint

echo -e "install powerline fonts \n"
cd ~/ROS_Library/fonts-master 
./install.sh
echo -e "intsall powerline fonts finish!!! \n"
