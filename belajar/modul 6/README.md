# Modul 6: Authentication Methods

## Pre-Shared Key (PSK)

- **Definisi**: Metode autentikasi yang menggunakan kata sandi bersama (shared key) untuk semua perangkat yang terhubung ke jaringan Wi-Fi.
- **Karakteristik**:
  - Digunakan dalam mode WPA/WPA2/WPA3 Personal.
  - Kata sandi dimasukkan secara manual oleh pengguna pada perangkat klien.
  - Kunci dihasilkan dari kata sandi menggunakan algoritma seperti PBKDF2 (WPA2/WPA3).
- **Kelebihan**:
  - Mudah dikonfigurasi, tidak memerlukan server tambahan.
  - Cocok untuk jaringan kecil seperti rumah atau usaha kecil.
- **Kekurangan**:
  - Rentan terhadap serangan brute-force jika kata sandi lemah.
  - Berbagi kata sandi meningkatkan risiko keamanan.
- **Contoh Penggunaan**: Wi-Fi rumah dengan kata sandi tunggal untuk semua perangkat.

## 802.1X / EAP (Extensible Authentication Protocol)

- **Definisi**: Kerangka kerja autentikasi berbasis port yang digunakan untuk mengamankan jaringan, termasuk Wi-Fi, dengan protokol EAP.
- **Karakteristik**:
  - Menggunakan server autentikasi (biasanya RADIUS) untuk memverifikasi identitas pengguna atau perangkat.
  - Mendukung berbagai metode EAP untuk fleksibilitas.
  - Digunakan dalam mode WPA/WPA2/WPA3 Enterprise.
- **Kelebihan**:
  - Keamanan tinggi dengan autentikasi per pengguna atau perangkat.
  - Mendukung manajemen terpusat untuk jaringan besar.
- **Kekurangan**:
  - Memerlukan infrastruktur server dan konfigurasi yang kompleks.
- **Contoh Penggunaan**: Jaringan perusahaan atau kampus dengan login berbasis username dan password.

## EAP-TLS, EAP-TTLS, PEAP, EAP-FAST

- **EAP-TLS (Transport Layer Security)**:
  - Menggunakan sertifikat digital untuk autentikasi dua arah (klien dan server).
  - **Kelebihan**: Keamanan sangat tinggi, tahan terhadap serangan man-in-the-middle.
  - **Kekurangan**: Memerlukan distribusi dan manajemen sertifikat untuk setiap klien, yang rumit.
  - **Contoh**: Jaringan perusahaan dengan keamanan ketat.
- **EAP-TTLS (Tunneled TLS)**:
  - Menggunakan sertifikat hanya di sisi server, klien diautentikasi melalui username dan password dalam tunnel aman.
  - **Kelebihan**: Lebih mudah diterapkan daripada EAP-TLS, tetap aman.
  - **Kekurangan**: Memerlukan server yang mendukung TTLS.
  - **Contoh**: Jaringan universitas dengan login berbasis username.
- **PEAP (Protected EAP)**:
  - Mirip dengan EAP-TTLS, menggunakan tunnel TLS untuk melindungi autentikasi berbasis username dan password.
  - **Kelebihan**: Didukung luas, konfigurasi lebih sederhana dibandingkan EAP-TLS.
  - **Kekurangan**: Ketergantungan pada keamanan kata sandi klien.
  - **Contoh**: Wi-Fi perusahaan dengan autentikasi Active Directory.
- **EAP-FAST (Flexible Authentication via Secure Tunneling)**:
  - Dikembangkan oleh Cisco, menggunakan tunnel aman tanpa sertifikat penuh (menggunakan PAC - Protected Access Credential).
  - **Kelebihan**: Cepat dan ringan, cocok untuk lingkungan dengan sumber daya terbatas.
  - **Kekurangan**: Kurang universal dibandingkan PEAP atau TTLS.
  - **Contoh**: Jaringan korporat dengan perangkat Cisco.

## RADIUS Server

- **Definisi**: Remote Authentication Dial-In User Service, server yang digunakan untuk autentikasi, otorisasi, dan akuntansi (AAA) dalam jaringan.
- **Karakteristik**:
  - Menyimpan informasi pengguna (username, password, atau sertifikat) untuk autentikasi.
  - Berinteraksi dengan AP untuk memverifikasi klien melalui protokol seperti EAP.
  - Mendukung integrasi dengan sistem seperti Active Directory atau LDAP.
- **Kelebihan**:
  - Manajemen terpusat untuk autentikasi di jaringan besar.
  - Mendukung berbagai metode EAP untuk fleksibilitas.
- **Kekurangan**:
  - Memerlukan server khusus dan keahlian untuk konfigurasi.
- **Contoh Penggunaan**: Jaringan Wi-Fi kampus yang mengharuskan login dengan kredensial mahasiswa.

## Captive Portal

- **Definisi**: Halaman web yang muncul saat pengguna terhubung ke jaringan Wi-Fi, meminta autentikasi atau persetujuan sebelum memberikan akses jaringan.
- **Karakteristik**:
  - Biasanya digunakan di jaringan terbuka atau semi-terbuka (misalnya hotspot publik).
  - Dapat meminta login (username/password), penerimaan syarat dan ketentuan, atau informasi tambahan.
  - Sering diintegrasikan dengan RADIUS untuk autentikasi.
- **Kelebihan**:
  - Mudah digunakan untuk pengguna tamu.
  - Memungkinkan kontrol akses tanpa enkripsi kompleks.
- **Kekurangan**:
  - Keamanan bergantung pada metode autentikasi yang digunakan.
  - Tidak memberikan enkripsi data kecuali dikombinasikan dengan WPA/WPA3.
- **Contoh Penggunaan**: Wi-Fi di bandara atau kafe yang meminta login atau penerimaan syarat layanan.
