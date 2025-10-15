# Besside-NG

![Besside-NG]()

## Instalasi

Kali Linux:

1. Menggunakan packet manager (`apt`):

   ```
   sudo apt-get update
   sudo apt-get install aircrack-ng
   ```

2. Melalui compile dari source:
   
   ```
   sudo apt-get update
   sudo apt-get install build-essential autoconf automake libtool pkg-config libnl-3-dev libnl-genl-3-dev libssl-dev ethtool shtool rfkill zlib1g-dev libpcap-dev libsqlite3-dev libpcre2-dev libhwloc-dev libcmocka-dev hostapd wpasupplicant tcpdump screen iw usbutils expect
   git clone https://github.com/aircrack-ng/aircrack-ng
   cd aircrack-ng
   autoreconf -i
   ./configure --with-experimental
   make
   sudo make install
   sudo ldconfig
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

1. Scan Semua Jaringan (Tanpa Filter):

   ```
   sudo airodump-ng [interface]
   ```
2. Filter berdasarkan Enkripsi:
   - WEP:

      ```
      sudo airodump-ng --encrypt WEP [interface]
      ```
   - WPA/WPA2-PSK

      ```
      sudo airodump-ng --encrypt WPA,WPA2 [interface]
      ```

**2. Capture Handshake/IVs:**

1. WEP:

   ```
   sudo besside-ng -b [bssid] -c [channel] -vv [interface]
   ```
2. WPA/WPA2-PSK:

   ```
   sudo besside-ng -b [bssid] -c [channel] -W -vv [interface]
   ```
        
**3. Crack Handshake/IVs:**

1. WEP:

   ```
   aircrack-ng -a 1 -b [bssid] [file_capture]
   ```
2. WPA/WPA2-PSK:

   ```
   aircrack-ng -a 2 -b [bssid] [file_capture] -w [wordlist]
   ```

## Catatan Penting

1. WEP:
   - Harus ada minimal 1 client yang terhubung ke AP untuk serangan ARP Replay berhasil.
   - Jika tidak ada client yang terhubung, serangan akan gagal karena tidak ada traffic ARP yang bisa di-capture dan di-replay.
2. WPA/WPA2-PSK:
   - Harus ada minimal 1 client yang terhubung untuk melakukan Deauth Attack.
   - Jika tidak ada client, handshake tidak bisa ditangkap karena tidak ada yang bisa di-deauth.

## Video Demonstrasi

[https://youtu.be/nDBMile1Fe4?si=NCw7Y36FEvYdBDvb](https://youtu.be/nDBMile1Fe4?si=NCw7Y36FEvYdBDvb)
