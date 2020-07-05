#!/bin/bash

ip link set wlp7s0 down
echo $
systemctl start netctl@serg.service
echo $
