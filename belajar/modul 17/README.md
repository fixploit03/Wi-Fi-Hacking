# Modul 17: Enterprise Wi-Fi Attacks

Jaringan Wi-Fi enterprise yang menggunakan autentikasi berbasis 802.1X dan server RADIUS dirancang untuk memberikan keamanan tingkat tinggi dengan kontrol akses granular. Namun, jaringan ini tetap rentan terhadap berbagai serangan canggih yang mengeksploitasi kelemahan dalam protokol, konfigurasi, atau perilaku pengguna. Modul ini membahas jenis-jenis serangan utama terhadap jaringan Wi-Fi enterprise, termasuk EAP Attacks, Fake AP/Evil Twin Attack, RADIUS Server Attacks, Certificate Spoofing, Downgrade Attacks, dan Username Harvesting, beserta mitigasi untuk mencegahnya.

## 17.1 EAP Attacks

**Extensible Authentication Protocol (EAP)** Attacks menargetkan proses autentikasi yang digunakan dalam jaringan Wi-Fi enterprise berbasis 802.1X. EAP adalah kerangka kerja fleksibel yang mendukung berbagai metode autentikasi seperti EAP-TLS, EAP-PEAP, dan EAP-TTLS, tetapi implementasi yang buruk atau konfigurasi lemah dapat dieksploitasi.

### Karakteristik
- **Sasaran:** Pertukaran paket EAP antara client (supplicant), access point (authenticator), dan server RADIUS.
- **Tujuan:** Mencuri kredensial, mengeksploitasi hash autentikasi, atau memaksa autentikasi ulang untuk analisis.
- **Metode Umum:**
  - **EAP Handshake Capture:** Menangkap paket EAPOL (EAP over LAN) menggunakan alat seperti Wireshark atau tcpdump dalam mode monitor untuk menganalisis identitas pengguna atau hash kredensial.
  - **EAP-MD5/LEAP Exploitation:** Metode EAP lama seperti EAP-MD5 atau LEAP rentan terhadap serangan offline karena menggunakan hash lemah (misalnya, MS-CHAPv2).
  - **EAP-PEAP/TTLS Weaknesses:** Jika validasi sertifikat client lemah, penyerang dapat menipu client untuk mengirim kredensial melalui tunnel yang tidak aman.

### Risiko
- Pencurian kredensial domain (username/password) yang dapat digunakan untuk akses sistem lain.
- Eksposur hash autentikasi untuk serangan offline seperti dictionary atau brute-force attack.
- Gangguan autentikasi yang menyebabkan denial-of-service (DoS).

### Mitigasi
- Gunakan metode EAP yang kuat seperti **EAP-TLS** yang memerlukan sertifikat dua arah.
- Terapkan validasi sertifikat ketat pada client untuk mencegah koneksi ke server palsu.
- Perbarui perangkat untuk menutup kerentanan pada metode EAP lama (misalnya, LEAP, MD5).
- Pantau lalu lintas EAPOL untuk mendeteksi aktivitas mencurigakan menggunakan WIDS/WIPS.

## 17.2 Fake AP / Evil Twin Attack

**Fake AP** atau **Evil Twin Attack** melibatkan pembuatan access point (AP) palsu yang meniru jaringan Wi-Fi enterprise sah untuk menipu pengguna agar terhubung dan mengungkapkan kredensial.

### Karakteristik
- **Mekanisme:** Penyerang membuat AP dengan SSID, BSSID, dan pengaturan keamanan yang identik dengan jaringan target menggunakan alat seperti **hostapd** atau **airbase-ng**.
- **Proses:**
  - Meniru jaringan enterprise dengan konfigurasi 802.1X.
  - Menggunakan **deauthentication attack** untuk memutus client dari AP sah, memaksa koneksi ke AP palsu.
  - Menyajikan halaman autentikasi palsu (captive portal) untuk mencuri kredensial.
- **Tujuan:** Mencuri username/password, hash autentikasi, atau melakukan man-in-the-middle (MITM).

### Risiko
- Eksposur kredensial domain yang dapat digunakan untuk serangan lanjutan.
- Intersepsi data sensitif melalui MITM.
- Penyalahgunaan akses jaringan untuk eksfiltrasi data atau serangan internal.

### Mitigasi
- Aktifkan **Protected Management Frames (PMF)** untuk mencegah deauthentication attack.
- Gunakan sertifikat server yang valid dan ajarkan pengguna untuk memverifikasi sertifikat sebelum memasukkan kredensial.
- Terapkan **WIDS/WIPS** untuk mendeteksi dan memblokir AP palsu.
- Gunakan VPN untuk mengenkripsi lalu lintas bahkan jika terhubung ke AP palsu.

## 17.3 RADIUS Server Attacks

**RADIUS Server Attacks** menargetkan server autentikasi RADIUS yang digunakan untuk memverifikasi kredensial dalam jaringan Wi-Fi enterprise.

### Karakteristik
- **Sasaran:** Server RADIUS atau komunikasi antara AP dan server RADIUS.
- **Metode Umum:**
  - **RADIUS Impersonation:** Penyerang membuat server RADIUS palsu menggunakan alat seperti **FreeRADIUS-WPE** untuk menangkap kredensial.
  - **Shared Secret Exploitation:** Mengeksploitasi shared secret lemah antara AP dan server RADIUS melalui brute-force atau sniffing.
  - **ARP Poisoning/DNS Spoofing:** Mengalihkan lalu lintas autentikasi ke server RADIUS palsu.
  - **DoS Attack:** Membanjiri server RADIUS dengan permintaan autentikasi untuk mengganggu layanan.

### Risiko
- Pencurian kredensial atau hash autentikasi untuk serangan offline.
- Gangguan layanan autentikasi, menyebabkan DoS bagi pengguna sah.
- Akses tidak sah ke jaringan enterprise.

### Mitigasi
- Gunakan shared secret yang kuat dan unik untuk setiap AP.
- Terapkan firewall untuk membatasi akses ke server RADIUS hanya dari AP yang sah.
- Enkripsi komunikasi RADIUS menggunakan IPsec atau TLS.
- Pantau log server RADIUS untuk mendeteksi upaya autentikasi mencurigakan.

## 17.4 Certificate Spoofing

**Certificate Spoofing** adalah serangan yang mengeksploitasi kelemahan dalam validasi sertifikat pada client untuk menipu pengguna agar mempercayai server atau AP palsu.

### Karakteristik
- **Mekanisme:** Penyerang membuat sertifikat palsu yang menyerupai sertifikat server RADIUS sah, sering kali dengan nama domain yang mirip.
- **Proses:**
  - Menggunakan AP palsu (evil twin) dengan sertifikat yang menyerupai aslinya.
  - Mengeksploitasi client yang tidak memverifikasi sertifikat dengan ketat (misalnya, mengabaikan peringatan sertifikat).
  - Menangkap kredensial yang dikirim melalui tunnel EAP seperti PEAP atau TTLS.
- **Alat:** **hostapd-wpe**, **FreeRADIUS-WPE**, atau sertifikat self-signed.

### Risiko
- Pencurian kredensial domain (username/password).
- Akses tidak sah ke jaringan enterprise.
- Potensi eskalasi ke sistem internal melalui kredensial yang dicuri.

### Mitigasi
- Konfigurasi client untuk memvalidasi sertifikat server dengan ketat (misalnya, memeriksa CA, domain, dan masa berlaku).
- Gunakan **EAP-TLS** yang memerlukan sertifikat dua arah untuk autentikasi mutual.
- Edukasi pengguna untuk tidak mengabaikan peringatan sertifikat.
- Terapkan kebijakan sertifikat terpercaya melalui MDM (Mobile Device Management).

## 17.5 Downgrade Attacks

**Downgrade Attacks** memaksa client atau AP untuk menggunakan metode autentikasi atau protokol yang lebih lemah untuk mempermudah eksploitasi.

### Karakteristik
- **Sasaran:** Proses negosiasi EAP atau protokol keamanan (misalnya, WPA3 ke WPA2).
- **Metode:**
  - **EAP Method Downgrade:** Memblokir metode EAP kuat (misalnya, EAP-TLS) dan memaksa client menggunakan metode lemah seperti EAP-MD5 atau LEAP.
  - **Protocol Downgrade:** Memanfaatkan mode transisi WPA2/WPA3 untuk memaksa koneksi ke WPA2.
  - **Frame Manipulation:** Mengubah frame manajemen untuk menipu client tentang kemampuan AP.
- **Alat:** **aireplay-ng**, **hostapd**, atau skrip khusus untuk manipulasi frame.

### Risiko
- Eksposur ke serangan yang sudah dikenal pada metode/protokol lemah (misalnya, cracking MS-CHAPv2).
- Penurunan tingkat keamanan jaringan secara keseluruhan.
- Pencurian kredensial atau data melalui protokol yang kurang aman.

### Mitigasi
- Nonaktifkan mode transisi WPA2/WPA3 pada AP.
- Konfigurasi client untuk hanya menerima metode EAP yang kuat (misalnya, EAP-TLS).
- Terapkan kebijakan keamanan ketat untuk menolak metode autentikasi legacy.
- Perbarui firmware AP dan client untuk mendukung protokol terbaru.

## 17.6 Username Harvesting

**Username Harvesting** adalah teknik untuk mengumpulkan identitas pengguna (username) dari jaringan Wi-Fi enterprise, yang kemudian dapat digunakan untuk serangan lanjutan.

### Karakteristik
- **Sasaran:** Paket EAP-Identity atau respons autentikasi awal.
- **Mekanisme:**
  - Menangkap paket EAP-Identity yang dikirim dalam plaintext selama proses autentikasi.
  - Menggunakan AP palsu untuk memancing client mengirimkan identitas mereka.
  - Mengeksploitasi konfigurasi EAP yang mengungkapkan username sebelum tunnel TLS terbentuk (misalnya, EAP-PEAP tanpa validasi sertifikat).
- **Alat:** **Wireshark**, **tcpdump**, **hostapd-wpe**.

### Risiko
- Mengungkap username yang dapat digunakan untuk serangan social engineering atau spear phishing.
- Memungkinkan penyerang untuk menargetkan akun spesifik dalam serangan kredensial.
- Memberikan wawasan tentang struktur organisasi (misalnya, format username seperti nama@domain.com).

### Mitigasi
- Gunakan metode EAP yang mengenkripsi identitas awal (misalnya, EAP-TTLS dengan anonymous identity).
- Terapkan validasi sertifikat ketat untuk mencegah koneksi ke AP palsu.
- Pantau lalu lintas EAP untuk mendeteksi upaya pengumpulan identitas.
- Edukasi pengguna untuk tidak memasukkan kredensial pada jaringan yang mencurigakan.

## 17.7 Rekomendasi Umum untuk Keamanan Wi-Fi Enterprise

- **Gunakan WPA3-Enterprise:** Dengan enkripsi 192-bit dan SAE untuk perlindungan maksimal.
- **Terapkan EAP-TLS:** Memerlukan sertifikat dua arah untuk autentikasi mutual.
- **Aktifkan PMF:** Untuk melindungi frame manajemen dari serangan deautentikasi atau disassosiasi.
- **Konfigurasi Validasi Sertifikat Ketat:** Pastikan client memverifikasi CA, domain, dan masa berlaku sertifikat.
- **Pantau Jaringan dengan WIDS/WIPS:** Untuk mendeteksi AP palsu, aktivitas mencurigakan, atau serangan DoS.
- **Gunakan Shared Secret Kuat:** Untuk komunikasi antara AP dan server RADIUS.
- **Nonaktifkan Metode EAP Lama:** Seperti EAP-MD5 atau LEAP yang rentan.
- **Edukasi Pengguna:** Ajarkan untuk memverifikasi jaringan dan tidak mengabaikan peringatan sertifikat.
- **Perbarui Perangkat Secara Rutin:** Untuk menutup kerentanan seperti KRACK atau Dragonblood.
- **Terapkan VPN:** Untuk mengenkripsi lalu lintas bahkan jika terhubung ke jaringan yang dikompromikan.
