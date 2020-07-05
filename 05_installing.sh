#!/bin/bash

default_pac="base linux linux-firmware linux-headers linux-lts linux-lts-headers"
additional_pac="base-devel vim git bc dkms dhcpcd netctl wpa_supplicant man-pages man-db"

echo -e "\n\e[32m[+] Basic packages installation process starts:\e[0m\n"
pacstrap /mnt $default_pac

echo -e "\n\e[32m[+] Additional packages installation process starts:\e[0m\n"
pacstrap /mnt $additional_pac

echo -e "\n\e[32m[+] The installation is now complete!\e[0m\n"
