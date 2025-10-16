# Nonaktifkan Mode Monitor

1. Buka terminal.
2. Ketikkan `iwconfig`, pastikan nama interface `wlan0` muncul.
3. Kalau sudah muncul, nonaktifkan mode monitor menggunakan:

   ```
   sudo airmon-ng stop wlan0
   sudo systemctl restart NetworkManager
   ```
4. Cek kembali menggunakan `iwconfig` apakah mode interfacenya sudah berubah menjadi mode `Managed`.
5. Pastikan koneksi Wi-Fi sudah bisa digunakan kembali.
