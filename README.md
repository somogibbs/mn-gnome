# mn-gnome
Gnome minimal install for my older laptop with themes and icon set
After standard.iso debian install - Get some necessary tools with `sudo apt install git curl wget` 
Clone this repo with `git clone https://github.com/somogibbs/mn-gnome.git` 
## cd into downloaded folder 
`cd mn-gnome`
## List and run install script
`ls` then `chmod +x install.sh ./install.sh`
## Check wifi
After running the "install" script and system reboot -
Check wifi if necessary with -- `sudo nano /etc/NetworkManager/NetworkManager.conf`
Change ifupdown values ***managed=true*** to ***managed=false*** or vice versa then save and reboot with `sudo shutdown -r now`


