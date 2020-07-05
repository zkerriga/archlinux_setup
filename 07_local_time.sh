#!/bin/bash

ln -sf /usr/share/zoneinfo/Europe/Moscow	/etc/localtime
hwclock --systohc

echo -e "\e[32m[+] The time zone is set!\e[0m"
