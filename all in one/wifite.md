# wifite

`wifite` adalah tool CLI yang digunakan untuk melakukan audit keamanan pada jaringan Wi-Fi WEP dan WPA/WPA2-PSK secara otomatis.

## Instalasi

```bash
sudo apt update
sudo apt install -y wifite
```

## Penggunaan

Mode otomatis:

```bash
sudo wifite -i <interface> --kill
```

Wi-Fi WEP:

```bash
sudo wifite -i <interface> --kill --wep --require-fakeauth --keep-ivs
```

Wi-Fi WPA/WPA2-PSK:

```bash
# Capture handshake
sudo wifite -i <interface> --kill --wpa --dict <wordlist> --no-pmkid

# Capture PMKID
sudo wifite -i <interface> --kill --wpa --dict <wordlist> --pmkid
```

Wi-Fi WPS:

```bash
sudo wifite -i <interface> --kill --wps --wps-only 
```

Perintah tambahan:

```bash
# Cek validitas 4-Way Handshake
sudo wifite --check <file_capture>

# Crack handshake yang berhasil di-capture
sudo wifite --crack

# Lihat Wi-Fi yang berhasil di-crack
sudo wifite --cracked
```
