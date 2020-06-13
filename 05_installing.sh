#!/bin/bash

default_pac="base linux linux-firmware linux-headers linux-lts linux-lts-headers"
additional_pac="base-devel vim git bc dkms dhcpcd netctl man-pages man-db"

echo -e "\033[32m[+]\033[0m Basic packages installation process starts:"
pacstrap /mnt $default_pac

echo -e "\033[32m[+]\033[0m Additional packages installation process starts:"
pacstrap /mnt $additional_pac

echo -e "\033[32m[+]\033[0m The installation is now complete!"
