# wifite

`wifite` adalah tool CLI yang digunakan untuk melakukan audit keamanan pada jaringan Wi-Fi WEP dan WPA/WPA2-PSK secara otomatis.

## Instalasi

```
sudo apt update
sudo apt install wifite hcxdumptool hcxtools
```

## Penggunaan

Mode otomatis:

```bash
# dasar
sudo wifite -i <interface> --kill

# filter berdasarkan kekuatan sinyal (RSSI)
sudo wifite -i <interface> --kill --power <power>

# filter berdasarkan client yang terhubung
sudo wifite -i <interface> --kill --clients-only
```

Wi-Fi WEP:

```bash
sudo wifite -i <interface> --kill --wep --require-fakeauth --keep-ivs
```

Wi-Fi WPA/WPA2-PSK:

```bash
# capture handshake
sudo wifite -i <interface> --kill --wpa --dict <wordlist> --no-pmkid

# pmkid attack
sudo wifite -i <interface> --kill --wpa --dict <wordlist> --pmkid
```

Wi-Fi WPS:

```bash
sudo wifite -i <interface> --kill --wps --wps-only 
```

Perintah tambahan:

```bash
# cek validitas 4-Way Handshake
sudo wifite --check <file_capture>

# crack handshake yang berhasil di-capture
sudo wifite --crack

# lihat Wi-Fi yang berhasil di-crack
sudo wifite --cracked
```
