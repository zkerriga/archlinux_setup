#!/bin/bash

# Start with sudo!

echo -e "\e[33m[!] Start program install!\e[0m"

programs="nvidia redshift rxvt-unicode openvpn p7zip xdotool flameshot obs-studio brightnessctl zsh i3 xorg-xinit"
add="clang rsync discord firefox handbrake handbrake-cli rsnapshot telegram-desktop alsa-utils pulseaudio-alsa jupyter-notebook acpi_call"
home="/home/zkerriga/"
pacman -S $programs $add

cp x/.xinitrc		$home
cp x/.Xauthority	$home
cp x/.Xresources	$home
cp x/.xbindkeysrc	$home

mkdir -p /etc/X11/nvidia-xorg.conf.d/
cp etc/X11/nvidia-xorg.conf.d/*	/etc/X11/nvidia-xorg.conf.d/
cp etc/X11/xorg.conf			/etc/X11/
cp -r etc/X11/xorg.conf.d		/etc/X11/

cp confs/.drirc			$home
cp confs/.gitconfig		$home
cp etc/krb5.conf		/etc/
cp etc/i3status.conf	/etc/
cp etc/vimrc			/etc/

cp /etc/rsnapshot.conf			/etc/rsnapshot.conf.default
cp confs/rsnapshot.conf			/etc/rsnapshot.conf
cp service/rsnapshot*			/etc/systemd/system/
cp service/turn-off-gpu.service	/etc/systemd/system/

cp confs/config		~/.config/i3/

cp scripts/turn_off_gpu.sh		/usr/sbin/
chown root:root					/usr/sbin/turn_off_gpu.sh
chmod 755 						/usr/sbin/turn_off_gpu.sh

#curl -O https://download.sublimetext.com/sublimehq-pub.gpg && pacman-key --add sublimehq-pub.gpg && pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
#echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | tee -a /etc/pacman.conf
#pacman -Sy sublime-text

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
