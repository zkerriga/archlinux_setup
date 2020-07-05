#!/bin/bash

git clone https://aur.archlinux.org/rtl8821ce-dkms-git.git	/opt/rtl8821ce-dkms-git
echo -e "\e[32m[+] The driver repository for the Internet has been downloaded!\e[0m"

git clone https://aur.archlinux.org/xbindkeys.git		/opt/xbindkeys
echo -e "\e[32m[+] Xbindkeys downloaded\e[0m"

git clone https://aur.archlinux.org/ttf-monaco.git			/opt/ttf-monaco
echo -e "\e[32m[+] The ttf-monaco has been downloaded!\e[0m"
