# Wifite

![Wifite](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/wifite/img/wifite.jpg)

## Instalasi

Kali Linux

Mengguakan packet manager (`apt`):

```
sudo apt-get update
sudo apt-get install python3 net-tools ieee-data aircrack-ng reaver tshark macchanger bully  cowpatty hashcat hashcat-data john john-data hcxdumptool hcxtools wifite
```

## Setup Adapter Wi-Fi

1. Pasang adapter Wi-Fi ke laptop/PC.
2. Pada aplikasi VirtualBox klik tab `Devices` -> `USB` -> `Jenis/merek`.
3. Pastikan checkbox nya sudah tercentang.
4. Buka terminal.
5. Ketikkan `iwconfig`, pastikan nama interface `wlan0` muncul.
6. Kalau sudah muncul, aktifkan mode monitor menggunakan:

   ```
   sudo airmon-ng check kill
   sudo airmon-ng start wlan0
   ```
7. Cek kembali menggunakan `iwconfig` apakah mode interfacenya sudah berubah menjadi mode `Monitor`.
8. Cek packet injection menggunakan:

   ```
   sudo aireplay-ng --test wlan0
   ```
   
## Penggunaan

**1. WEP:**

```
sudo wifite --kill -i [interface] --wep --require-fakeauth --keep-ivs
```

**2. WPA/WPA2-PSK:**

1. Capture Handshake:

   ```
   sudo wifite --kill -i [interface] --wpa --no-pmkid --dict [wordlist]
   ```
2. Capture PMKID:

   ```
   sudo wifite --kill -i [interface] --wpa --pmkid --dict [wordlist]
   ```

**3. WPA/WPA2-PSK (WPS):**

```
sudo wifite --kill -i [interface] --wpa --no-pmkid --wps --wps-only
```

## Video Demonstrasi:

[https://youtu.be/j7DtOmEaOiM?si=wsgmdfxon8Z5y7-C](https://youtu.be/j7DtOmEaOiM?si=wsgmdfxon8Z5y7-C)
