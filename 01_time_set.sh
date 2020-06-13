#!/bin/bash

timedatectl set-ntp true
timedatectl set-timezone Europe/Moscow
timedatectl status

echo -e "\033[32m[+]\033[0m Time is set!"
