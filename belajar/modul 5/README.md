# Modul 5: Enkripsi dan Authentication

## Open Network (No Security)

- **Definisi**: Jaringan Wi-Fi tanpa enkripsi atau autentikasi, memungkinkan siapa saja untuk terhubung tanpa kata sandi.
- **Karakteristik**:
  - Tidak ada perlindungan terhadap akses tidak sah.
  - Data dikirim tanpa enkripsi, rentan terhadap penyadapan (eavesdropping).
- **Kelebihan**: Mudah diakses, cocok untuk hotspot publik (misalnya kafe atau bandara).
- **Kekurangan**: Tidak aman, risiko keamanan tinggi seperti pencurian data atau serangan man-in-the-middle.
- **Contoh Penggunaan**: Wi-Fi publik gratis di tempat umum.

## WEP (Wired Equivalent Privacy)

- **Definisi**: Standar keamanan Wi-Fi pertama, diperkenalkan pada 1999, menggunakan enkripsi berbasis RC4.
- **Karakteristik**:
  - Menggunakan kunci statis 64-bit atau 128-bit.
  - Protokol autentikasi sederhana berbasis kunci bersama (shared key).
- **Kelebihan**: Memberikan perlindungan dasar pada masa awal Wi-Fi.
- **Kekurangan**:
  - Rentan terhadap serangan karena kelemahan algoritma RC4 dan manajemen kunci yang buruk.
  - Mudah diretas menggunakan alat seperti Aircrack-ng.
- **Status**: Usang, tidak direkomendasikan untuk digunakan karena tidak aman.

## WPA (Wi-Fi Protected Access)

- **Definisi**: Diperkenalkan pada 2003 sebagai pengganti WEP, menggunakan TKIP (Temporal Key Integrity Protocol) untuk enkripsi.
- **Karakteristik**:
  - Meningkatkan keamanan dengan kunci dinamis yang berubah secara periodik.
  - Kompatibel dengan perangkat keras WEP, memudahkan transisi.
- **Kelebihan**: Lebih aman daripada WEP, mendukung autentikasi kunci bersama (PSK).
- **Kekurangan**: TKIP memiliki kelemahan keamanan, rentan terhadap beberapa serangan (misalnya Beck-Tews attack).
- **Status**: Digantikan oleh WPA2, jarang digunakan saat ini.

## WPA2 (AES-CCMP)

- **Definisi**: Diperkenalkan pada 2004, menggunakan AES (Advanced Encryption Standard) dengan CCMP (Counter Mode with Cipher Block Chaining Message Authentication Code Protocol).
- **Karakteristik**:
  - Enkripsi AES 128-bit, jauh lebih aman daripada TKIP.
  - Mendukung autentikasi Personal (PSK) dan Enterprise (RADIUS server).
- **Kelebihan**: Standar keamanan yang kuat, digunakan secara luas di jaringan modern.
- **Kekurangan**: Rentan terhadap serangan seperti KRACK (Key Reinstallation Attack) jika tidak ditambal.
- **Contoh Penggunaan**: Jaringan Wi-Fi rumah dan perusahaan sebelum adopsi WPA3.

## WPA3 (SAE, Enhanced Open)

- **Definisi**: Diperkenalkan pada 2018, standar keamanan terbaru dengan fitur SAE (Simultaneous Authentication of Equals) dan Enhanced Open.
- **Karakteristik**:
  - **SAE (Dragonfly Handshake)**: Menggantikan PSK, mencegah serangan offline dictionary dan memberikan forward secrecy.
  - **Enhanced Open**: Keamanan untuk jaringan terbuka menggunakan OWE (Opportunistic Wireless Encryption) untuk mengenkripsi data tanpa autentikasi.
  - Mendukung enkripsi AES 192-bit atau 256-bit untuk keamanan lebih tinggi.
- **Kelebihan**:
  - Lebih tahan terhadap serangan brute-force dan penyadapan.
  - Meningkatkan keamanan di jaringan publik.
- **Kekurangan**: Memerlukan perangkat keras yang mendukung WPA3, adopsi masih terbatas.
- **Contoh Penggunaan**: Jaringan modern di rumah atau perangkat IoT terbaru.

## WPA2/WPA3 Transition Mode

- **Definisi**: Mode transisi yang memungkinkan perangkat mendukung WPA2 dan WPA3 secara bersamaan untuk kompatibilitas.
- **Karakteristik**:
  - Perangkat WPA3 dapat menggunakan SAE, sementara perangkat WPA2 menggunakan PSK.
  - Memungkinkan jaringan mendukung perangkat lama dan baru secara bersamaan.
- **Kelebihan**: Memudahkan transisi ke WPA3 tanpa mengorbankan kompatibilitas.
- **Kekurangan**: Keamanan jaringan hanya sekuat mode terlemah (WPA2), sehingga tidak sepenuhnya memanfaatkan keunggulan WPA3.
- **Contoh Penggunaan**: Jaringan perusahaan yang memiliki campuran perangkat lama dan baru.

## Enterprise vs Personal Authentication

- **Personal Authentication (PSK - Pre-Shared Key)**:
  - Menggunakan kata sandi bersama yang dimasukkan oleh semua perangkat untuk autentikasi.
  - Cocok untuk jaringan kecil seperti rumah atau usaha kecil.
  - **Kelebihan**: Mudah dikonfigurasi, tidak memerlukan server tambahan.
  - **Kekurangan**: Rentan terhadap serangan jika kata sandi lemah atau dibagikan.
  - **Contoh**: Wi-Fi rumah dengan kata sandi tunggal.

- **Enterprise Authentication (RADIUS-based)**:
  - Menggunakan server RADIUS untuk autentikasi berbasis pengguna (username dan password) atau sertifikat.
  - Mendukung protokol seperti EAP-TLS, PEAP, atau EAP-TTLS.
  - **Kelebihan**: Keamanan lebih tinggi, manajemen pengguna terpusat, cocok untuk jaringan besar.
  - **Kekurangan**: Memerlukan infrastruktur tambahan (server RADIUS) dan konfigurasi kompleks.
  - **Contoh**: Jaringan Wi-Fi di kampus atau perusahaan dengan login individual.
