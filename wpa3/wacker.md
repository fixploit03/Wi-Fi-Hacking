# wacker

`wacker` adalah tool CLI yang digunakan untuk melakukan serangan online dictionary attack terhadap Access Point WPA3.

## Instalasi

```bash
sudo apt update
sudo apt install -y pkg-config libnl-3-dev gcc libssl-dev libnl-genl-3-dev
git clone https://github.com/blunderbuss-wctf/wacker
cd wacker
cp defconfig wpa_supplicant-2.10/wpa_supplicant/.config
git apply wpa_supplicant.patch
cd wpa_supplicant-2.10/wpa_supplicant
make -j$(nproc)
cd ../../
```

## Penggunaan

```bash
sudo ./wacker.py --interface <interface> --ssid <ssid> --bssid <bssid> --freq <frekuensi> --wordlist <wordlist>
```
