#!/bin/bash
#
# pcapng2pcap.sh
#
# Script Bash untuk konversi file capture format PCAPNG ke format PCAP
# Dibuat oleh: Rofi (Fixploit03)

if [[ $# -ne 2 ]]; then
	echo -e "$0 - Script Bash untuk konversi file capture format PCAPNG ke format PCAP\n\nUsage: bash $0 <file_pcapng> <output_pcap>"
	exit 1
fi

file_pcapng=$1
output=$2

if [[ ! -f "${file_pcapng}" ]]; then
	echo "ERROR: File '${file_pcapng}' tidak ditemukan!"
	exit 1
fi

if ! capinfos -t "${file_pcapng}" | grep -q "pcapng"; then
	echo "ERROR: File '${file_pcapng}' bukan file PCAPNG!"
	exit 1
fi

if [[ "${output##*.}" != "pcap" ]]; then
	echo "ERROR: Output harus memiliki ekstensi .pcap!"
	exit 1
fi

if tcpdump -r "${file_pcapng}" -w "${output}" &>/dev/null; then
	echo "File '${file_pcapng}' berhasil dikonversi menjadi '${output}'!"
	exit 0
else
	echo "ERROR: Gagal mengonversi file '${file_pcapng}'!"
	exit 1
fi
