#!/bin/bash

# Start with sudo

systemctl enable dhcpcd.service
systemctl start dhcpcd.service

echo "net.ipv4.ip_default_ttl=65" > /etc/sysctl.d/99-sysctl.conf
iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65

cp netctl/panarchynet	/etc/netctl/

rfkill unblock all
ip link set wlp7s0 down
netctl start panarchynet

