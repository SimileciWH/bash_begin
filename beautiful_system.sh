#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : beautiful_system.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-16 08:22:30
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================

sudo apt-get update
sudo apt-get install -y make

cd ~/Downloads/myUbuntu1804Backup/systemBeautiful 
if [ -d ~/.themes ]; then
	echo "'$HOME/.themes' is exist no need to copy..."
else
	cp -r .themes ~
fi
if [ -d ~/.icons ]; then 
	echo "'$HOME/.icons' is exist no need to copy..."
else 
	cp -r .icons ~
fi
#install dash to dock
cd dashtodock/
sudo make
sudo make install 
#install grub
cd ../grub_theme
./Install
sudo update-grub
sudo apt-get install -y gnome-tweak-tool gnome-shell-extensions
echo "+++++++++---------------+++++++++++++++++\n"
echo "\t Install sucessfully!!!\n"
echo "+++++++++---------------+++++++++++++++++\n"
echo "Please open tweaks to set up somethings!\n"
echo "After that reboot your system, use cmd 'reboot'\n"
