#!/bin/bash
clear
#Instalacion repositoriso iniciales
pkg install root-repo && pkg install x11-repo && pkg install unstable-repo
sleep 2
clear
#instalacion de programas basicos
pkg install python2 
#Personalizacion propia
echo "instalando Teclado"
cat extra-keys = [ \ >> ~/.termux/termux.properties
cat ['ESC','|','/','HOME','UP','END','PGUP','DEL'], \ >> ~/.termux/termux.properties
cat ['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN','BKSP'] \ >> ~/.termux/termux.properties
cat ] >> ~/.termux/termux.properties
echo
echo "Teclado instalado"
sleep 5
clear
echo "instalado prompt"
mkdir ~/github
git clone https://github.com/Cabbagec/termux-ohmyzsh.git ~/github/ohmyzsh
echo "prompt instalado"
