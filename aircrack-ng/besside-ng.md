# besside-ng

`besside-ng` adalah tool CLI yang digunakan untuk mengotomatisasikan proses capture IVs WEP dan handshake WPA/WPA2-PSK.

## Penggunaan

Capture IVs dan handshake WPA/WPA2-PSK semua Wi-Fi yang ada di sekitar:

```bash
sudo besside-ng -vv <interface>
```

Capture IVs WEP:

```bash
sudo besside-ng -b <bssid> -c <channel> -vv <interface>
```

Capture handshake WPA/WPA2-PSK:

```bash
sudo besside-ng -b <bssid> -c <channel> -W -vv <interface>
```
