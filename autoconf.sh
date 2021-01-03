#!/bin/bash

echo -e "Baixando Itens da Internet"

#wget -P ~/Downloads/ https://downloads.tuxfamily.org/godotengine/3.2.2/Godot_v3.2.2-stable_x11.64.zip

#wget -O ~/Downloads/Telegram_Linux.xz https://telegram.org/dl/desktop/linux

#wget -P ~/Downloads/ https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.17.7391.tar.gz

wget -P ~/Downloads/ https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

#sudo dpkg --install ~/Downloads/packages-microsoft-prod.deb

sudo apt-get update;

echo -e "\033[0;36m""\nInstalando pacotes APT: \033[0m"
for pacote in `cat apt.txt` ; do sudo apt install $pacote -y ; done;

echo -e "\033[0;33m""\nInstalando pacotes SNAP:  \033[0m"
for pacote in `cat snap.txt` ; do sudo snap install $pacote; done;

echo -e "\033[0;34m""\nInstalando pacotes do PIP para Python3:  \033[0m"
#for pacote in `cat pip3.txt` ; do pip3 install $pacote; done;

sudo apt-get upgrade -fy;
echo -e "\033[0;32m""\nAcabou! Seus Programas Estão Prontos :)\n"

