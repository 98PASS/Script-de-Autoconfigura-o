#!/bin/bash

sudo apt-get update;

for pacote in `cat apt.txt` ; do sudo apt install $pacote -y ; done;
for pacote in `cat snap.txt` ; do sudo snap install $pacote; done;


#cd ~/Downloads

sudo apt-get upgrade -y;
echo "Acabou! Seus Programas Estão Prontos :)"
