#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc

echo -e "\033[32m[+]\033[0m The time zone is set!"
