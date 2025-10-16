# Setup Adapter Wi-Fi

## Menyambungkan Adapter Wi-Fi ke VirtualBox

1. Pasang adapter Wi-Fi ke laptop/PC.
2. Pada aplikasi VirtualBox klik tab `Devices` -> `USB` -> `Jenis/merek`.
3. Pastikan checkbox nya sudah tercentang.

## Aktifkan Mode Monitor

1. Buka terminal.
2. Ketikkan `iwconfig`, pastikan nama interface `wlan0` muncul.
3. Kalau sudah muncul, aktifkan mode monitor menggunakan:

   ```
   sudo airmon-ng check kill
   sudo airmon-ng start wlan0
   ```
4. Cek kembali menggunakan `iwconfig` apakah mode interfacenya sudah berubah menjadi mode `Monitor`.
5. Cek packet injection menggunakan:

   ```
   sudo aireplay-ng --test wlan0
   ```

## Nonaktifkan Mode Monitor

1. Buka terminal.
2. Ketikkan `iwconfig`, pastikan nama interface `wlan0` muncul.
3. Kalau sudah muncul, nonaktifkan mode monitor menggunakan:

   ```
   sudo airmon-ng stop wlan0
   sudo systemctl restart NetworkManager
   ```
4. Cek kembali menggunakan `iwconfig` apakah mode interfacenya sudah berubah menjadi mode `Managed`.
5. Pastikan koneksi Wi-Fi sudah bisa digunakan kembali.
