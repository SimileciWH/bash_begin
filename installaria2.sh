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


sudo apt-get update
sudo apt-get install -y aria2
sudo mkdir /etc/aria2 
sudo touch /etc/aria2/aria2.session 
sudo chmod 777 /etc/aria2/aria2.session 
sudo cp ~/Downloads/myUbuntu1804Backup/aria2/aria2.conf /etc/aria2/
sudo aria2c --conf-path=/etc/aria2/aria2.conf -D
echo -e "Aria2 has been installed sucessfully!!! \n"
