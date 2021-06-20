#!/bin/bash

sudo echo -e "Baixando Itens da Internet"

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

wget -O ~/Downloads/Drupal_Latest.zip https://www.drupal.org/download-latest/zip
#baixa a versão mais recente do Drupal

echo -e "\033[0;33m""\nInstalando pacotes SNAP:  \033[0m"
for pacote in `cat snap.txt` ; do sudo snap install $pacote; done;

echo -e "\033[0;34m""\nInstalando pacotes do PIP para Python3:  \033[0m"
#for pacote in `cat pip3.txt` ; do pip3 install $pacote; done;

sudo apt-get update;
echo -e "\033[0;36m""\nInstalando pacotes APT: \033[0m"
for pacote in `cat apt.txt` ; do sudo apt install $pacote -y ; done;
sudo ufw allow in "Apache Full" #permite trafego http e https para o Apache
sudo mysql_secure_installation

sudo apt-get upgrade -fy;
echo -e "\033[0;32m""\nAcabou! Seus Programas Estão Prontos :)\n"

