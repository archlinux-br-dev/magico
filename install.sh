#!/usr/bin/env bash
#
# Arquivo: install.sh
# Descrição: Installer para o magico (https://aur.archlinux.org)
#
# Feito por Arch Linux BR Dev Team (https://github.com/archlinux-br-dev)
# Site do Projeto: https://archlinux-br-dev.github.io/magico
# Repositório: https://github.com/archlinux-br-dev/magico
#
# Criado em:        31/05/2018 19:39:27
# Última alteração: 24/01/2019 14:57:27

# read -r -d '' logo <<'EOF'
IFS='' read -r -d '' logo <<'EOF'

Bem vindo ao script de instalação do:
                       _           
 _ __ ___   __ _  __ _(_) ___ ___  
| '_ ` _ \ / _` |/ _` | |/ __/ _ \ 
| | | | | | (_| | (_| | | (_| (_) |
|_| |_| |_|\__,_|\__, |_|\___\___/ 
                 |___/             
EOF

echo -e "\033[00;35m$logo\033[0m"

cache="/tmp/magico-cache"

echo "Instalando dependencias..."
sudo pacman -S jq jshon git --noconfirm 1> /dev/null 2> /dev/null

echo "Clonando o magico..."
[ -d $cache ] && rm -rf $cache 
mkdir -p $cache 
git clone https://aur.archlinux.org/magico $cache
cd $cache

echo "Instalando o magico..."
makepkg -si --noconfirm 1> /dev/null 2> /dev/null

clear
echo -ne "Tudo pronto!\n"

exit