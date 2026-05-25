#!/bin/bash

if [[ $EUID -ne 0 ]]; then
	echo "ERROR: Script ini harus dijalankan sebagai root!"
	exit 1
fi

dependensi=(
	"bc"
	"build-essential"
	"git"
	"linux-headers-$(uname -r)"
)

apt-get update -y

for d in "${dependensi[@]}"; do
	apt-get install "${d}" -y
done

cd /usr/local/src
git clone https://github.com/joseguzman1337/8814au
cd 8814au

make -j$(nproc)
make install

modprobe 8814au
