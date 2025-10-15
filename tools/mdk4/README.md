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
   sudo apt-get install pkg-config libnl-3-dev libnl-genl-3-dev libpcap-dev git
   git clone https://github.com/aircrack-ng/mdk4
   cd mdk4
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

**2. Jalankan MDK4:**

   1. Blacklist mode:

      ```
      sudo mdk4 [interface] d -b [file_blacklist] -E [essid] -B [bssid] -c [channel] 
      ```

      Blacklist mode itu hanya melakukan deauth terhadap client yang ada di file `[file_blacklist]`. Client lainnya akan diabaikan.
   2. Whitelist mode:

      ```
      sudo mdk4 [interface] d -w [file_whitelist] -E [essid] -B [bssid] -c [channel]
      ```

      Whitelist mode itu kebalikan dari blacklist mode. Semua client akan di-deauth, kecuali yang ada di file `[file_whitelist].` (dilindungi).

   > **Catatan:**
   > - Pada blacklist mode, bisa ditambahkan opsi `-w [file_whitelist]` agar client yang ada di file tersebut tidak di-deauth (dilindungi).
   > - Kalu ingin deauth client tertentu gunakan opsi `-S [mac_client]`.

## Video Demonstrasi

[https://youtu.be/eO44GfS2LO8?si=fDtXCxNIUE0_k-1Z](https://youtu.be/eO44GfS2LO8?si=fDtXCxNIUE0_k-1Z)
