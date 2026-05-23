#!/bin/bash
#
# chanhop.sh
#
# Script Bash untuk melakukan channel hopping pada interface Wi-Fi
# Dibuat oleh: Rofi (Fixploit03)

if [[ $# -ne 2 ]]; then
	echo -e "$0 - Script Bash untuk melakukan channel hopping pada interface Wi-Fi\n\nUsage: bash $0 <interface> <durasi>"
	exit 1
fi

interface=$1
durasi=$2

if ! ip link show "${interface}" &>/dev/null; then
	echo "ERROR: Interface '${interface}' tidak ditemukan!"
	exit 1
fi

echo "Channel hopping dimulai pada interface '${interface}'... (tekan 'CTRL+C' untuk menghentikannya!)"
sleep 3

while true; do
	for channel in {1..14}; do
		echo "Channel saat ini: ${channel}"
		iwconfig "${interface}" channel "${channel}" &>/dev/null
		sleep "${durasi}"
	done
done
