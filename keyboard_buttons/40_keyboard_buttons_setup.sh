#!/bin/bash

# Start with sudo:

pacman -S acpi acpid

# For check values (brightness buttons)
acpi_listen


handler_path=/etc/acpi/handler.sh
cp $handler_path ./handler.sh.bk
cp ./handler.sh $handler_path
