#!/bin/bash

name=zkerriga

useradd -m -g users -G wheel -s /bin/bash $name
passwd $name

pacman -S sudo
ln -s /usr/bin/vim /usr/bin/vi

echo -e "\e[32m[+] The user is created!\e[0m"
echo -e "\e[33m[!]\e[0m Please, start \e[34mvisudo\e[0m!"
echo -e "\e[33m[!]\e[0m Add \e[34m\"zkerriga ALL=(ALL) NOPASSWD: /usr/share/turn_off_gpu.sh\"\e[0m"