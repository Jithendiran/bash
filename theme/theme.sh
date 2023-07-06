#!/bin/bash

#Cinnamon
sudo apt update && sudo apt install plank 


sudo mkdir -p /usr/share/icons/ /usr/share/themes/ /usr/share/plank/themes/

sudo tar -xf ./icons/macOSBigSur-White.tar.xz -C /usr/share/icons/
sudo tar -xf ./icons/McMojave-circle-blue.tar.xz -C /usr/share/icons/
sudo tar -xf ./themes/Mojave-dark.tar.xz -C /usr/share/themes/
sudo tar -xf ./plank/mcOS_Mojave_BS_White.tar.xz -C /usr/share/plank/themes/



gsettings set org.cinnamon.desktop.interface cursor-theme 'macOSBigSur-White'
gsettings set org.cinnamon.theme name 'Mojave-dark'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Mojave-dark'
gsettings set org.cinnamon.desktop.wm.preferences button-layout 'close,minimize,maximize:'
gsettings set org.cinnamon.desktop.interface icon-theme 'McMojave-circle-blue-dark'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Mojave-dark'

sudo gsettings set org.cinnamon.desktop.interface cursor-theme 'macOSBigSur-White'
sudo gsettings set org.cinnamon.theme name 'Mojave-dark'
sudo gsettings set org.cinnamon.desktop.interface gtk-theme 'Mojave-dark'
sudo gsettings set org.cinnamon.desktop.wm.preferences button-layout 'close,minimize,maximize:'
sudo gsettings set org.cinnamon.desktop.interface icon-theme 'McMojave-circle-blue-dark'
sudo gsettings set org.cinnamon.desktop.wm.preferences theme 'Mojave-dark'

# force Qt apps to follow custom theme eg: vlc
sudo apt-get install qt5-style-plugins

echo -e "[Qt]\nstyle=GTK+" >> ~/.config/Trolltech.conf
echo -e "QT_QPA_PLATFORMTHEME=gtk2" | sudo tee -a /etc/environment

echo -e "[Nemo Action]\n
Active=true\n
Name=Open in vscode\n
Comment=Opens selected folder on vscode\n
Exec=code %F\n
Icon-Name=com.visualstudio.code\n
Selection=any\n
Extensions=dir;\n
Quote=double\n
Dependencies=code;" | sudo tee -a /usr/share/nemo/actions/vsc.nemo_action

echo -e 'alias upg="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y"' | sudo tee -a /etc/bash.bashrc
