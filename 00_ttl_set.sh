#!/bin/bash

iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65

echo -e "\e[32m[+] TTL-connection are set!\e[0m"
