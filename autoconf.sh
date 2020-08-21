#!/bin/bash

sudo apt-get update;

echo -e "\033[0;36m""\nInstalando pacotes APT: \033[0m"
for pacote in `cat apt.txt` ; do sudo apt install $pacote -y ; done;

echo -e "\033[0;33m""\nInstalando pacotes SNAP:  \033[0m"
for pacote in `cat snap.txt` ; do sudo snap install $pacote; done;

echo -e "\033[0;34m""\nInstalando pacotes do PIP para Python3:  \033[0m"
#for pacote in `cat pip3.txt` ; do pip3 install $pacote; done;

cd ~/Downloads/
wget https://downloads.tuxfamily.org/godotengine/3.2.2/Godot_v3.2.2-stable_x11.64.zip

sudo apt-get upgrade -fy;
echo -e "\033[0;32m""\nAcabou! Seus Programas Estão Prontos :)\n"
