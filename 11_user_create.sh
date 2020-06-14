#!/bin/bash

name=zkerriga

useradd -m -g users -G wheel -s /bin/bash $name
passwd $name

pacman -S sudo
ln -s /usr/bin/vim /usr/bin/vi

echo -e "\033[32m[+]\033[0m The user is created!"
echo -e "\033[33m[!]\033[0m Please, start \033[34mvisudo\033[0m!"
