# MDK4

![MDK4](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/mdk4/img/mdk3_4.jpg)

## Instalasi

Kali Linux:

1. Menggunakan package manager (`apt`):

   ```
   sudo apt-get update
   sudo apt-get install mdk4 aircrack-ng
   ```

2. Melalui compile dari source:
   
   ```
   sudo apt-get update
   sudo apt-get install build-essential libpcap-dev git
   git clone https://github.com/charlesxsh/mdk3-master
   cd mdk3-master
   make
   sudo make install
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

**1. Scan Wi-Fi:**

```
sudo airodump-ng [interface]
```

**2. Jalankan MDK3:**

   1. Blacklist mode:

      ```
      sudo mdk3 wlan0 d -b [file_blacklist] -c [channel]
      ```

      Blacklist mode itu hanya melakukan deauth terhadap client yang ada di file `[file_blacklist]`. Client lainnya akan diabaikan.
   2. Whitelist mode:

      ```
      sudo mdk3 wlan0 d -w [file_whitelist] -c [channel]
      ```

      Whitelist mode itu kebalikan dari blacklist mode. Semua client akan di-deauth, kecuali yang ada di file `[file_whitelist].` (dilindungi).

## Video Demonstrasi

[https://youtu.be/eO44GfS2LO8?si=fDtXCxNIUE0_k-1Z](https://youtu.be/eO44GfS2LO8?si=fDtXCxNIUE0_k-1Z)
