#!/bin/zsh
sudo rm -f /etc/resolv.conf
echo $
sudo cp /home/zkerriga/vpn/resolv.conf /etc/resolv.conf
echo $
sudo openvpn /home/zkerriga/vpn/vpn-students.ovpn
