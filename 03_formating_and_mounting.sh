#!/bin/bash

mkfs.ext4 /dev/nvme0n1p5
mkfs.ext4 /dev/sda2
echo -e "\e[32m[+] Sections are formatted!\e[0m"



mkswap /dev/nvme0n1p6
swapon /dev/nvme0n1p6
echo -e "\e[32m[+] The swap section has been created!\e[0m"

mount /dev/nvme0n1p5	/mnt
mount /dev/sda2			/mnt
mkdir /mnt/boot
mount /dev/nvme0n1p2	/mnt/boot/
echo -e "\e[32m[+] The partitions are mounted!\e[0m"
