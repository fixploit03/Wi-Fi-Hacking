# bettercap

`bettercap` adalah framework CLI yang digunakan untuk melakukan network reconnaissance, serangan MiTM, dan berbagai jenis serangan jaringan lainnya.

## Instalasi

```bash
sudo apt install -y bettercap
```

## Penggunaan

Jalankan bettercap mode interaktif:

```bash
sudo bettercap -iface <interface>
```

Scan Wi-Fi:

```bash
wifi.recon on
```

Tampilkan semua Wi-Fi yang berhasil di-scan:

```bash
wifi.show
```

Capture handshake WPA/WPA2-PSK:

```bash
# filter Wi-Fi tertentu
wifi.recon <bssid>

# deauth semua client (broadcast)
wifi.deauth *

# deauth client tertentu
wifi.deauth <bssid>
```

Capture PMKID:

```bash
# tidak mengirim frame association request
set wifi.deauth.skip *

# kirim association request
wifi.assoc <bssid>
```

Hasil capture disimpan di: `~/bettercap-wifi-handshakes.pcap`
