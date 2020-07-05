#!/bin/bash

addr="/home/zkerriga/scripts/gpu_off.log"
date_now=$(date)
touch $addr

method="\_SB.PCI0.PEG0.PEGP._OFF"
echo -n "[+] Trying $method: "
echo $method > /proc/acpi/call && \
	echo "works!" && \
	echo "$date_now - works!" >> $addr && \
	exit 0
echo "$date_now - failed!" >> $addr

