#!/bin/bash

echo "ancom" > /etc/hostname

echo "127.0.0.1		localhost" > /etc/hosts
echo "::1			localhost" >> /etc/hosts
echo "127.0.1.1		ancom.localdomain	ancom" >> /etc/hosts

echo -e "\e[32m[+] The host is configured!\e[0m"
