# aireplay-ng

`aireplay-ng` adalah tool CLI yang digunakan untuk melakukan berbagai jenis serangan pada jaringan Wi-Fi WEP dan WPA/WPA2-PSK.

## Penggunaan

Serangan Deauthentication:

```bash
sudo aireplay-ng -0 <jumlah_paket> -a <bssid> -c <mac_client> <interface>
```

Serangan Fake Auth:

```bash
sudo aireplay-ng -1 <delay> -a <bssid> -h <mac_attacker> <interface>
```

Serangan Interactive Packet Replay:

```bash
# Filter berdasarkan BSSID
sudo aireplay-ng -2 -b <bssid> <interface>

# Filter berdasarkan MAC sumber
sudo aireplay-ng -2 -h <mac_attacker> <interface>

# Replay dari file capture
sudo aireplay-ng -2 -r <file_capture> <interface>
```

Serangan ARP Request Replay:

```bash
sudo aireplay-ng -3 -b <bssid> -h <mac_attacker> <interface>
```

Serangan KoreK ChopChop:

```bash
sudo aireplay-ng -4 -b <bssid> -h <mac_attacker> <interface>
```

Tes kemampuan packet injection:

```bash
sudo aireplay-ng -9 <interface>
```
