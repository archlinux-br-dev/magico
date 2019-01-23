#!/bin/bash

cache="/tmp/magico-cache"

echo "Instalando dependencias..."
sudo pacman -Syu jq jshon git --noconfirm 1> /dev/null 2> /dev/null

echo "Clonando o magico..."
[ -d $cache ] && rm -rf $cache 
mkdir -p $cache 
git clone https://aur.archlinux.org/magico $cache
cd $cache

echo "Instalando o magico..."
makepkg -si --noconfirm 1> /dev/null 2> /dev/null

clear
echo "Tudo pronto!"

exit