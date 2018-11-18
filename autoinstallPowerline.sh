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
echo -e "Powerline has been installed sucessfully!!! \n"
