#!/bin/bash
#
# capclean.sh
#
# Script Bash untuk mengekstrak frame penting dari file capture untuk keperluan cracking WPA
# Dibuat oleh: Rofi (Fixploit03)

if [[ $# -ne 2 ]]; then
	echo -e "$0 - Script Bash untuk mengekstrak frame penting dari file capture untuk keperluan cracking WPA\n\nUsage: bash $0 <file_capture> <output>"
	exit 1
fi

file_capture=$1
output=$2

if [[ ! -f "${file_capture}" ]]; then
        echo "ERROR: File '${file_capture}' tidak ditemukan!"
        exit 1
fi

if tshark -r "${file_capture}" -R "(wlan.fc.type_subtype == 8 || eapol)" -2 -F pcap -w "${output}"; then
	exit 0
else
	echo "ERROR: Gagal memproses file '${file_capture}'!"
	exit 1
fi
