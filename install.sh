#!/bin/bash

cache="/tmp/magico-cache"

echo "Instalando dependencias..."
sudo pacman -Syu jq jshon git

echo "Clonando o magico..."
[ -d $cache ] && rm -rf $cache 
mkdir -p $cache 
git clone https://aur.archlinux.org/magico $cache
cd $cache

echo "Instalando o magico..."
makepkg -si 1> /dev/null

clear
echo "Tudo pronto!"

exit