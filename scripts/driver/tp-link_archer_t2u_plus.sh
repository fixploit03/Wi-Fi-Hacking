#!/bin/bash
#
# Instal driver TP-LINK Archer T2U Plus

if [[ $EUID -ne 0 ]]; then
	echo "ERROR: Script ini harus dijalankan sebagai root!"
	exit 1
fi

dependensi=(
	"linux-headers-$(uname -r)"
	"build-essential"
	"bc"
	"git"
)

apt-get update -y

for d in "${dependensi[@]}"; do
	apt-get install "${d}" -y
done

cd /usr/local/src
git clone https://github.com/morrownr/8821au-20210708
cd 8821au-20210708

make -j$(nproc)
make install

modprobe 8821au
