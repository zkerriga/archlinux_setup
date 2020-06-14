#!/bin/bash

opt=/home/zkerriga/opt

another="libx11 python autoconf-archive"
sudo pacman -S $another

mkdir $opt

git clone https://aur.archlinux.org/thermald.git		$opt/termald
git clone https://aur.archlinux.org/clion.git			$opt/clion
git clone https://aur.archlinux.org/zoom.git			$opt/zoom
git clone https://aur.archlinux.org/slack-desktop.git	$opt/slack-desctop
