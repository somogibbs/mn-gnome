# mn-gnome
Gnome minimal install for my older laptop with themes and icon set
After standard.iso debian install - Get some necessary tools with `sudo apt install git curl wget` 
Clone this repo with `git clone https://github.com/somogibbs/mn-gnome.git` 
## cd into downloaded folder 
`cd mn-gnome`
## List and run install script
`ls` then `chmod +x install.sh` then `./install.sh`
## Check wifi
After running the "install" script and system reboot -
Check wifi .conf file with -- `sudo nano /etc/NetworkManager/NetworkManager.conf`
Change ifupdown values ***managed=false*** to ***managed=true*** and save.
NetworkManager should be enabled from install script but in case not, enable it with `sudo systemctl enable NetworkManager` followed by
`sudo systemctl start NetworkManager` Reboot with `sudo shutdown -r now`
## After install steps
After main install and wifi check run `after-install.sh` to do some cleanup and install some packages that don't seem to install when 
included in the main install script.  


