#!/bin/bash

# Ubuntu
# sudo apt update && sudo apt install plank 


# sudo mkdir -p /usr/share/icons/ /usr/share/themes/ /usr/share/plank/themes/

# sudo tar -xf ./icons/macOSBigSur-White.tar.xz -C /usr/share/icons/
# sudo tar -xf ./icons/McMojave-circle-blue.tar.xz -C /usr/share/icons/
# sudo tar -xf ./themes/Mojave-dark.tar.xz -C /usr/share/themes/
# sudo tar -xf ./plank/mcOS_Mojave_BS_White.tar.xz -C /usr/share/plank/themes/



# gsettings set org.gnome.desktop.interface cursor-theme 'macOSBigSur-White'
# gsettings set org.gnome.theme name 'Mojave-dark'
# gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-dark'
# gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
# gsettings set org.gnome.desktop.interface icon-theme 'McMojave-circle-blue-dark'
# gsettings set org.gnome.desktop.wm.preferences theme 'Mojave-dark'

sudo gsettings set org.gnome.desktop.interface cursor-theme 'macOSBigSur-White'
# sudo gsettings set org.gnome.theme name 'Mojave-dark'
sudo gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-dark'
sudo gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
sudo gsettings set org.gnome.desktop.interface icon-theme 'McMojave-circle-blue-dark'
sudo gsettings set org.gnome.desktop.wm.preferences theme 'Mojave-dark'

#to disable dock
gnome-extensions disable ubuntu-dock@ubuntu.com
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false

#inteligent hide for dock
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true

#Vlc.desktop
#Exec=env QT_QPA_PLATFORMTHEME=gtk2 /usr/bin/vlc --started-from-file %U

# Cinnemon


# sudo apt update && sudo apt install plank 


# sudo mkdir -p /usr/share/icons/ /usr/share/themes/ /usr/share/plank/themes/

# sudo tar -xf ./icons/macOSBigSur-White.tar.xz -C /usr/share/icons/
# sudo tar -xf ./icons/McMojave-circle-blue.tar.xz -C /usr/share/icons/
# sudo tar -xf ./themes/Mojave-dark.tar.xz -C /usr/share/themes/
# sudo tar -xf ./plank/mcOS_Mojave_BS_White.tar.xz -C /usr/share/plank/themes/



# gsettings set org.cinnamon.desktop.interface cursor-theme 'macOSBigSur-White'
# gsettings set org.cinnamon.theme name 'Mojave-dark'
# gsettings set org.cinnamon.desktop.interface gtk-theme 'Mojave-dark'
# gsettings set org.cinnamon.desktop.wm.preferences button-layout 'close,minimize,maximize:'
# gsettings set org.cinnamon.desktop.interface icon-theme 'McMojave-circle-blue-dark'
# gsettings set org.cinnamon.desktop.wm.preferences theme 'Mojave-dark'

# sudo gsettings set org.cinnamon.desktop.interface cursor-theme 'macOSBigSur-White'
# sudo gsettings set org.cinnamon.theme name 'Mojave-dark'
# sudo gsettings set org.cinnamon.desktop.interface gtk-theme 'Mojave-dark'
# sudo gsettings set org.cinnamon.desktop.wm.preferences button-layout 'close,minimize,maximize:'
# sudo gsettings set org.cinnamon.desktop.interface icon-theme 'McMojave-circle-blue-dark'
# sudo gsettings set org.cinnamon.desktop.wm.preferences theme 'Mojave-dark'

# common for cinnemon, ubuntu
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