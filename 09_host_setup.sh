#!/bin/bash

echo "ancom" > /etc/hostname

echo "127.0.0.1		localhost" > /etc/hosts
echo "::1			localhost" >> /etc/hosts
echo "127.0.1.1		ancom.localdomain	ancom" >> /etc/hosts

echo -e "\033[32m[+]\033[0m The host is configured!"
