# Wi-Fi Protected Setup (WPS)

## Pengertian
Wi-Fi Protected Setup (WPS) atau dikenal juga sebagai Wi-Fi Simple Configuration (WSC)
adalah standar yang dikembangkan oleh Wi-Fi Alliance dan diluncurkan secara resmi pada
8 Januari 2007. Tujuannya adalah mempermudah proses koneksi perangkat ke jaringan
Wi-Fi tanpa harus memasukkan passphrase yang panjang.

WPS hanya bekerja pada jaringan Wi-Fi yang menggunakan WPA atau WPA2.

---

## Peran dalam Protokol WPS
- Registrar : Perangkat yang memberikan kredensial jaringan (biasanya router/AP)
- Enrollee  : Perangkat yang ingin bergabung ke jaringan
- AP        : Access Point yang menjadi perantara antara Registrar dan Enrollee

---

## Metode WPS

### 1. PIN Method
Menggunakan PIN 8 digit. PIN dibagi menjadi dua bagian yang diverifikasi secara
terpisah sehingga hanya butuh maksimal 11.000 percobaan untuk menemukannya.
- Digit 1-4 : Bagian pertama (10.000 kemungkinan)
- Digit 5-7 : Bagian kedua (1.000 kemungkinan)
- Digit 8   : Checksum dari 7 digit pertama

### 2. Push Button Configuration (PBC)
Pengguna menekan tombol WPS di router dan perangkat secara bersamaan dalam
waktu 2 menit untuk terhubung otomatis. Ini adalah metode yang paling umum.

### 3. Near Field Communication (NFC)
Koneksi otomatis dengan mendekatkan perangkat ke router yang mendukung NFC.

### 4. USB Method
Menggunakan flashdisk untuk mentransfer konfigurasi jaringan antar perangkat.
Metode ini sudah tidak digunakan lagi (deprecated).

---

## Proses Autentikasi (M1-M8)
Protokol WPS menggunakan pertukaran 8 pesan melalui EAP-WSC (Extensible
Authentication Protocol - Wi-Fi Simple Configuration) yang terintegrasi dengan
IEEE 802.1X.

1. M1 : Enrollee mengirim nonce dan informasi perangkat ke Registrar
2. M2 : Registrar membalas dengan nonce dan informasi perangkat
3. M3 : Enrollee mengirim hash bagian pertama PIN
4. M4 : Registrar memverifikasi bagian pertama PIN dan membalas
5. M5 : Enrollee mengirim hash bagian kedua PIN
6. M6 : Registrar memverifikasi bagian kedua PIN dan membalas
7. M7 : Enrollee mengkonfirmasi
8. M8 : Registrar mengirim kredensial jaringan (SSID, passphrase, dll)

---

## Kelemahan WPS

### 1. Brute Force PIN
Karena PIN diverifikasi dalam dua bagian terpisah, jumlah percobaan yang
dibutuhkan hanya 11.000, bukan 100.000.000.

### 2. Pixie Dust Attack
Serangan terhadap implementasi WPS yang lemah karena penggunaan nonce yang
tidak acak (E-S1 dan E-S2). Memungkinkan pemulihan PIN secara offline dalam
hitungan detik tanpa perlu brute force online.

### 3. PIN Statis
Banyak router menggunakan PIN yang diturunkan dari MAC address atau informasi
hardware sehingga mudah diprediksi.

---

## Tools

| Tools       | Fungsi                              |
|-------------|-------------------------------------|
| Reaver      | Brute force WPS PIN                 |
| Bully       | Brute force WPS PIN                 |
| Wash        | Scan router dengan WPS aktif        |
| Aircrack-NG | Suite analisis jaringan Wi-Fi       |

---

## Mitigasi
- Nonaktifkan WPS di pengaturan router
- Gunakan WPA3 jika router mendukung
- Aktifkan rate limiting pada percobaan PIN
- Perbarui firmware router secara berkala

---

## Referensi
- Wi-Fi Alliance     : https://www.wi-fi.org
- Spesifikasi WPS    : Wi-Fi Protected Setup Specification v1.0h
- Spesifikasi WSC    : Wi-Fi Simple Configuration Specification v2.0.2
- Viehböck, S (2011) : Brute Forcing Wi-Fi Protected Setup
