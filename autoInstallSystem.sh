#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : autoInstallSystem.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-17 19:13:22
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================


cd ~/Downloads/myUbuntu1804Backup 
./base_tools.sh 
./autoInstallROS.sh  
./installaria2.sh 
./installROS_library.sh 
./autocatkin_makeWP.sh 
./autoinstallPowerline.sh
echo -e "Please configure powerline in bashrc vimrc and tmux.conf \n"
