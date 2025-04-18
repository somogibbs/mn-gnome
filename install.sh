!#/bin/bash
## Install Gnome components 
sudo apt update && sudo apt install gnome-core -y && sudo apt install gnome-shell-extension-manager 
gnome-shell-extension-dashtodock gnome-tweaks libproxy1-plugin-networkmanager network-manager-gnome 
file-roller totem-plugins gnome-photos gnome-extra-icons -y 

## Miscellaneous program install
sudo apt -y install libavcodec-extra ffmpeg mpv cpu-x lm-sensors neofetch nala xfce4-terminal btop firefox-esr 

#Install Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

#Install Bitwarden
wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb" -O bitwarden.deb

#Setup UFW
sudo apt -y install ufw &&
sudo ufw allow ssh &&
sudo ufw enable

## Remove initial installer - reboot
sudo apt purge ifupdown -y && sudo shutdown -r now
