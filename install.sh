!#/bin/bash
## Update initial install
sudo apt update && sudo apt upgrade -y 

## Install Gnome components 
sudo apt install gnome-core -y && sudo apt install gnome-tweaks gnome-shell-extension-manager gnome-shell-extension-dashtodock gnome-shell-extension-tiling-assistant gnome-shell-extension-blur-my-shell gnome-extra-icons libproxy1-plugin-networkmanager network-manager-gnome file-roller -y 

## Miscellaneous program install
sudo apt -y install libavcodec-extra ffmpeg mpv cpu-x lm-sensors neofetch xfce4-terminal btop firefox-esr obsidian-icon-theme fonts-recommended variety 

# Install Speedtest
curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash &&
sudo apt -y install speedtest

# Setup UFW
sudo apt -y install ufw 
sudo ufw enable 

# Download Bitwarden debian package
wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb" -O bitwarden.deb

# Install Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

## Configure wifi - reboot
sudo apt purge ifupdown -y && 
sudo systemctl enable NetworkManager &&
sudo systemctl start NetworkManager &&
sudo shutdown -r now
