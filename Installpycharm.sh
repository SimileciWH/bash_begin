#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : Installpycharm.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-16 14:02:08
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================
cd ~/Downloads/myUbuntu1804Backup/softInstall
echo -e "Start to install Pycharm!!! \n"
sudo apt-get install -y libcanberra-gtk-module

sudo cp -r pycharm-professional-2018.1.4 /opt
echo -e "Pycharm is sucessede!!! \n"

echo -e "Start to install qtcreator-ros!!! \n" 
sudo apt-get install -y qt4*
./qtcreator-ros-xenial-latest-offline-installer.run
echo -e "Install qtcreator-ros sucessfully!!! \n"

