#!/bin/bash

sudo apt-get update;

echo -e "\033[0;36m" "Instalando pacotes APT: \033[0m"
for pacote in `cat apt.txt` ; do sudo apt install $pacote -y ; done;

echo -e "\033[0;33m" "Instalando pacotes SNAP:  \033[0m"
for pacote in `cat snap.txt` ; do sudo snap install $pacote; done;

echo -e "\033[0;34m" "Instalando pacotes do PIP para Python3:  \033[0m"
for pacote in `cat pip3.txt` ; do pip3 install $pacote; done;

sudo apt-get upgrade -fy;
echo -e "\033[0;32m" "Acabou! Seus Programas Estão Prontos :)"
