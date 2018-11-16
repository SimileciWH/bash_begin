#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : base_tools.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-15 19:27:30
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================
rm ~/.bashrc
rm ~/.vimrc

sudo apt-get update 
sudo apt-get install -y  vim git tmux okular kmplayer openconnect gdebi-core net-tools loacte


# vpn configure
sudo mkdir /etc/vpnc 
cd /etc/vpnc 
sudo wget http://git.infradead.org/users/dwmw2/vpnc-scripts.git/blob_plain/HEAD:/vpnc-script
sudo chmod +x vpnc-script

# download vimrc tmux.conf bashrc
cd /tmp 
git clone https://github.com/SimileciWH/simileciWH_vimrc_tmux_bashrc_config.git 
sudo mv simileciWH_vimrc_tmux_bashrc_config/.bashrc ~
sudo mv simileciWH_vimrc_tmux_bashrc_config/.vimrc ~
sudo mv simileciWH_vimrc_tmux_bashrc_config/.tmux.conf ~

sudo rm -rf /tmp/simileciWH*

#install chrome
echo -e "Install chrome!!! \n"
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb 
sudo rm -rf google*
cd ~
echo -e "Install sucesfully \n"

#install pycharm
cd ~/Downloads/myUbuntu1804Backup/softInstall
echo -e "Start to install Pycharm!!! \n"
sudo apt-get install -y libcanberra-gtk-module

sudo cp -r pycharm-professional-2018.1.4 /opt
echo -e "Pycharm is sucessede!!! \n"

#install qtcreator-ros
echo -e "Start to install qtcreator-ros!!! \n" 
sudo apt-get install -y qt4*
./qtcreator-ros-xenial-latest-offline-installer.run
echo -e "Install qtcreator-ros sucessfully!!! \n"
