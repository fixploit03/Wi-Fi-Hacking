# Airgorah

![Airgorah](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/airgorah%20logo.jpg)

## Instalasi

Kali Linux:

Dari rilis yang sudah dibuat sebelumnya:

   ```
   wget https://github.com/martin-olivier/airgorah/releases/download/v0.7.4/airgorah_0.7.4_x86_64.deb
   sudo apt-get update
   sudo dpkg -i airgorah_0.7.4_x86_64.deb
   sudo apt-get install -f
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
