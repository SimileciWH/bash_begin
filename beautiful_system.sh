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
read -p "input 1 to continue...." realldy_go
if [ $realldy_go -eq 1 ]
then 
	cd ~/Downloads/myUbuntu1804Backup/systemBeautiful 
	cp -r .themes ~
	cp -r .icons ~
	#install dash to dock
	cd dashtodock/
	sudo make
	sudo make install 
	#install grub
	cd ../grub_theme
	./Install
	sudo update-grub
fi
sudo apt-get install -y gnome-tweak-tool gnome-shell-extensions
echo "+++++++++---------------+++++++++++++++++\n"
echo "\t Install sucessfully!!!\n"
echo "+++++++++---------------+++++++++++++++++\n"
echo "Please open tweaks to set up somethings!\n"
echo "After that reboot your system, use cmd 'reboot'\n"
