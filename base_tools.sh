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
sudo apt-get update 
sudo apt-get install -y okular kmplayer gdebi-core
sudo apt-get install -y vim git tmux
sudo apt-get install -y net-tools loacte
sudo apt-get install -y openconnect

#install vim
cp -r ~/Downloads/myUbuntu1804Backup/config_files ~
if [ -d ~/.vim/bundle/Vundle.vim ]; then
	echo "Vundle.vim is already exist, no need to copy!"
	sleep 3
else
	mkdir -p ~/.vim/bundle
	cp -r ~/config_files/Vundle.vim ~/.vim/bundle
fi
# vpn configure
if [ -f /etc/vpnc/vpnc-script ]; then 
	echo "VPN has been configureed, no need to clone!!!"
	sleep 3
else 
	sudo mkdir /etc/vpnc 
	cd /etc/vpnc 
	sudo wget http://git.infradead.org/users/dwmw2/vpnc-scripts.git/blob_plain/HEAD:/vpnc-script
	while [ $? -ne 0 ]
	do
		echo "Download vpnc-script failure, try again..."
		sleep 6
		sudo wget http://git.infradead.org/users/dwmw2/vpnc-scripts.git/blob_plain/HEAD:/vpnc-script
	done 
	sudo chmod +x vpnc-script
fi
# download vimrc tmux.conf bashrc
cd ~
git clone https://github.com/SimileciWH/simileciWH_vimrc_tmux_bashrc_config.git 
while [ $? -ne 0 ]
do
	echo -e "download failure,try again... \n"
	sleep 10
	git clone https://github.com/SimileciWH/simileciWH_vimrc_tmux_bashrc_config.git 
done
sudo mv simileciWH_vimrc_tmux_bashrc_config/.bashrc ~
sudo mv simileciWH_vimrc_tmux_bashrc_config/.vimrc ~
sudo mv simileciWH_vimrc_tmux_bashrc_config/.tmux.conf ~

sudo rm -rf ~/simileciWH*

#install chrome
whereis google-chrome 
if [ $? -eq 0 ]; then 
	echo "your computer is still install google-chrome."
	sleep 3
else 
	echo -e "Install chrome!!! \n"
	sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo gdebi google-chrome-stable_current_amd64.deb 
	sudo rm -rf google*
	cd ~
	echo -e "Install sucesfully \n"
fi

#install pycharm
if [ -d /opt/pycharm-professional-2018.1.4 ]; then 
	echo "pycharm has been installed in '/opt', no need to override!"
	sleep 3
else 
	cd ~/Downloads/myUbuntu1804Backup/softInstall
	echo -e "Start to install Pycharm!!! \n"
	sudo apt-get install -y libcanberra-gtk-module

	sudo cp -r pycharm-professional-2018.1.4 /opt
	echo -e "Pycharm is sucessede!!! \n"
fi

#install qtcreator-ros
if [ -d $HOME/Qt/Docs ]; then 
	echo "qt IDE has been installed, no need to install again!"
	sleep 3
else 
	echo -e "Start to install qtcreator-ros!!! \n" 
	sudo apt-get install -y qt4*
	./qtcreator-ros-xenial-latest-offline-installer.run
	echo -e "Install qtcreator-ros sucessfully!!! \n"
fi
