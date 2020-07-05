#!/bin/bash

timedatectl set-ntp true
timedatectl set-timezone Europe/Moscow
timedatectl status

echo -e "\e[32m[+] Time is set!\e[0m"
