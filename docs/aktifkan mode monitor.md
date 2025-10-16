# Aktifkan Mode Monitor

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
