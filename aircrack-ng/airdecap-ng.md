# airdecap-ng

`airdecap-ng` adalah tool CLI yang digunakan untuk mendekripsi paket WEP dan WPA/WPA2-PSK yang terenkripsi.

## Penggunaan

Dekripsi paket WEP:

```bash
airdecap-ng <file_capture> -b <bssid> -e <essid> -w <kunci_wep> -o <output>
```

Dekripsi paket WPA/WPA2-PSK:

```bash
# Menggunakan passphrase (ASCII)
airdecap-ng <file_capture> -b <bssid> -e <essid> -p <password> -o <output>

# Menggunakan PMK (hex)
airdecap-ng <file_capture> -b <bssid> -e <essid> -k <pmk> -o <output>
```
