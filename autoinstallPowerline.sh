#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : autoinstallPowerline.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-17 18:19:02
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================

########## check powerline has been install or not##########
pip3 show powerline-status 
if [ $? -eq 0 ]; then
	echo "-------------------------------------------------------------------------"
	echo "  Your computer have already install powerline "
	echo "  You can configure it in '.bashrc', 'tmux.conf', and '.vimrc' file!"
	echo "  Please to use 'pip3 show powerline-status' to know where u install it."
	echo "  Exit autoinstallPowerline.sh file..."
	echo "-------------------------------------------------------------------------"
	sleep 6
else
	
	sudo apt-get update
	sudo apt-get install -y python3-pip
	sudo apt-get install -y git
	sudo pip3 install git+git://github.com/Lokaltog/powerline
	while [ $? -ne 0 ]
	do
		echo -e "install powerline failure, try again... \n"
		sleep 10
		sudo pip3 install git+git://github.com/Lokaltog/powerline
	done
	sudo wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
	sudo wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
	sudo mv PowerlineSymbols.otf /usr/share/fonts/ 
	sudo fc-cache -vf /usr/share/fonts/ 
	sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
	pip3 show powerline-status
	if [ $? -eq 0 ]; then 
		echo -e "Powerline has been installed sucessfully!!! \n"
	else 
		echo "Powerline has not been installed correctly, please check Err!!!"
	fi
	sleep 6
fi
