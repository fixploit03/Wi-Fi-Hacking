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

1. Jalankan Airgorah:

   ```
   sudo airgorah
   ```
2. Pilih interface yang ingin digunakan.
   
   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/1.png)
3. Ini merupakan interface dari Airgorah. Bagian atas itu untuk informasi mengenai Access Point (AP) dan bagian bawah itu untuk informasi mengenai client (station).

   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/2.png)
4. Pilih Wi-Fi yang ingin diaudit dengan mengklik pada bagian `ESSID-nya`.

   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/3.png)
5. Klik icon Wi-Fi warna biru yang ada garis miring warna merah untuk melakukan serangan deauth.

   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/4.png)
6. Di sini kita disediakan 2 tool untuk melakukan serangan deauth, yaitu `Aireplay-ng` dan `MDK4`. Kalian bebas mau menggunakan yang mana. Di sini juga terdapat 2 pilihan: mau deauth single client atau semua client. Kalau mau cepat mendapatkan handshake, pilih yang semua client.

   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/5.png)
7. Tunggu proses deauth sampai kita mendapatkan handshake. Untuk mengetahui apakah kita sudah mendapatkan handshake atau belum, lihat pada kolom handshake yang ada di pojok kanan. Di gambar ini, kita sudah berhasil mendapatkan handshake yang ditandai dengan centang. Jika sudah, stop serangan deauth dengan mengklik icon silang warna merah.

   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/6.png)
8. Klik icon kunci warna kuning untuk mendekripsi handshake yang sudah berhasil kita capture.

   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/7.png)
9. Simpan handshake yang berhasil di-capture ke dalam file berekstensi `.cap`.

   ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/8.png)
10. Di sini tersedia opsi dictionary attack untuk meng-crack handshake yang sudah berhasil kita capture.

    ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/9.png)
11. Di sini tersedia opsi brute-force attack untuk meng-crack handshake yang sudah berhasil kita capture.

    ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/10.png)

12. Di sini, saya menggunakan teknik dictionary attack untuk meng-crack handshake-nya. Kita harus memasukkan wordlist yang ingin digunakan untuk meng-crack handshake tersebut. Jika sudah, klik `Start Decryption`.
    
    ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/11.png)
13. Dari gambar ini, kita berhasil meng-crack handshake-nya. PSK atau password Wi-Fi-nya adalah yang ada di bagian `KEY FOUND`, yaitu `*123456*`.

    ![](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/airgorah/img/12.png)
