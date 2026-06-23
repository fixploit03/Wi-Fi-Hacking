# aircrack-ng

`aircrack-ng` adalah tool CLI yang digunakan untuk mengcrack kunci WEP dan handshake WPA/WPA2-PSK.

## Penggunaan

Crack kunci WEP:

```bash
aircrack-ng -a 1 <file_capture>
```

Crack handshake WPA/WPA2-PSK:

```bash
aircrack-ng -a 2 <file_capture> -w <wordlist>
```

Crack PMKID:

```bash
aircrack-ng -I <pmkid> -w <wordlist>

# Format PMKID
<pmkid>*<mac_ap>*<mac_sta>*<ssid_hex>
```

Crack handshake WPA/WPA2-PSK menggunakan database `airolib-ng`:

```bash
aircrack-ng -r <db> <file_capture>
```
