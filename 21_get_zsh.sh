#!/bin/bash

# Start with sudo!

home="/home/zkerriga/"

cp -r /root/.oh-my-zsh	$home
cp confs/.zshrc			$home
chsh -s /usr/bin/zsh
