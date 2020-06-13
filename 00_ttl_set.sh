#!/bin/bash

iptables -t mangle -A POSTROUTING -j TTL --ttl-set 65

echo -e "\033[32m[+]\033[0m TTL-connection are set!"
