#!/bin/bash

echo -e "\033[33m[!]\033[0m Start program install!"

programs="nvidia redshift rxvt-unicode openvpn p7zip xdotool xbindkeys flameshot obs-studio brightnessctl zsh i3"
add="clang rsync discord firefox handbrake rsnapshot"
home="/home/zkerriga/"
pacman -S $programs $add

cp x/.xinitrc $home
cp x/.Xauthority $home
cp x/.Xresources $home
cp x/.xbindkeysrc $home

mkdir -p /etc/X11/nvidia-xorg.conf.d/
cp etc/X11/nvidia-xorg.conf.d/* /etc/X11/nvidia-xorg.conf.d/
cp etc/X11/xorg.conf /etc/X11/
cp -r etc/X11/xorg.conf.d /etc/X11/

cp confs/.drirc $home
cp confs/.gitconfig $home
cp etc/krb5.conf /etc/
cp etc/i3status.conf /etc/

cp /etc/rsnapshot.conf /etc/rsnapshot.conf.default
cp conf/rsnapshot.conf /etc/rsnapshot.conf
cp service/rsnapshot* /etc/systemd/system/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
