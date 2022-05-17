#!/bin/bash
# Ubuntu (GNOME) 18.04 Enable VNC with no encryption

sudo apt install gconf2 vino -y
sudo ufw allow from any to any port 5900 proto tcp
gconftool-2 --set --type=bool /desktop/gnome/remote_access/enabled true
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false
echo $'\n'$"*** Encryption Disabled ***"
echo $'\n'$"*** Launching Settings ***"
echo $'\n'$"*** Select Sharing - Screen Sharing - Turn On and Enter a Password ***"
gnome-control-center
