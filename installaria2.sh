#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : installaria2.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-17 16:47:54
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================


echo "start to install aria2c..."
sudo apt-get update
sudo apt-get install -y aria2
if [ -d /etc/aria2 ]; then 
	echo "aria2 has been configure already!!!"
else
	sudo mkdir /etc/aria2 
	sudo touch /etc/aria2/aria2.session 
	sudo chmod 777 /etc/aria2/aria2.session 
	sudo cp ~/Downloads/myUbuntu1804Backup/aria2/aria2.conf /etc/aria2/
fi
sudo aria2c --conf-path=/etc/aria2/aria2.conf -D
if [ $? -eq 0]; then
    echo "Aria2 has been installed sucessfully!!! \n"
else
    echo "Aria2 configure is failure!"
fi
