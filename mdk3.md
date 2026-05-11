# mdk3

`mdk3` adalah tool CLI yang digunakan untuk melakukan berbagai jenis serangan pada jaringan Wi-Fi.

## Instalasi

```bash
sudo apt update
sudo apt install mdk3
```

## Penggunaan

Serangan Beacon Flood:

```bash
# beacon flood dengan SSID random
sudo mdk3 <interface> b

# beacon flood dengan SSID tertentu
sudo mdk3 <interface> b -n <ssid>

# beacon flood dari file yang berisi daftar SSID
sudo mdk3 <interface> b -f <file>

# beacon flood di channel tertentu
sudo mdk3 <interface> b -c <channel>
```

Serangan DoS Autentikasi:

```bash
# serang semua Wi-Fi di sekitar
sudo mdk3 <interface> a

# serang Wi-Fi tertentu
sudo mdk3 <interface> a -a <bssid>

# serang menggunakan MAC address client yang valid dari database OUI
sudo mdk3 <interface> a -a <bssid> -m
```

Serangan Brute Force ESSID:

```bash
# menggunakan SSID spesifik
sudo mdk3 <interface> p -e <ssid>

# menggunakan dictionary attack
sudo mdk3 <interface> p -t <bssid> -f <wordlist>

# menggunakan brute force attack
sudo mdk3 <interface> p -t <bssid> -b <charset>
```

Serangan Deauthentication:

```bash
# deauth semua Wi-Fi di sekitar
sudo mdk3 <interface> d

# deauth channel tertentu
sudo mdk3 <interface> d -c <channel>

# mode whitelist (deauth semua Wi-Fi kecuali yang ada di file)
sudo mdk3 <interface> d -w <file>

# mode blacklist (deauth semua Wi-Fi yang ada di file)
sudo mdk3 <interface> d -b <file>
```
