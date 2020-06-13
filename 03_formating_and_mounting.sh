#!/bin/bash

mkfs.ext4 /dev/nvme0n1p5
mkfs.ext4 /dev/sda2
echo -e "\033[32m[+]\033[0m Sections are formatted!"



mkswap /dev/nvme0n1p6
swapon /dev/nvme0n1p6
echo -e "\033[32m[+]\033[0m The swap section has been created!"

mount /dev/nvme0n1p5 /mnt
mount /dev/sda2 /mnt
mkdir /mnt/boot
mount /dev/nvme0n1p2 /mnt/boot/
echo -e "\033[32m[+]\033[0m The partitions are mounted!"
