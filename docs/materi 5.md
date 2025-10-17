# Materi - 5 | Keamanan Jaringan Wi-Fi

Keamanan jaringan Wi-Fi adalah aspek krusial dalam melindungi data dan privasi pengguna dari akses tidak sah. Jaringan Wi-Fi yang tidak aman dapat menjadi pintu masuk bagi serangan siber, pencurian data, hingga penyalahgunaan bandwidth.

## Protokol Keamanan Wi-Fi

### 1. WEP (Wired Equivalent Privacy)

WEP adalah protokol keamanan nirkabel pertama yang dikembangkan untuk standar IEEE 802.11, bertujuan memberikan tingkat keamanan setara dengan jaringan kabel.

**Tahun Rilis:** 1997

**Karakteristik:**
- Menggunakan algoritma enkripsi RC4 dengan panjang kunci 64-bit (40-bit kunci + 24-bit Initialization Vector) atau 128-bit (104-bit kunci + 24-bit IV).
- Kunci enkripsi bersifat statis (tidak berubah secara otomatis).
- Dirancang untuk melindungi data pada jaringan Wi-Fi melalui enkripsi dan autentikasi.

**Kelemahan:**
- Rentan terhadap serangan karena kelemahan desain, seperti Initialization Vector (IV) yang pendek (24-bit) dan dapat digunakan kembali, memungkinkan analisis pola.
- Dapat dipecahkan dalam hitungan menit menggunakan alat seperti Aircrack-NG.
- Tidak menyediakan mekanisme distribusi kunci yang aman, sehingga kunci sering dibagikan secara manual.
- Tidak mendukung otentikasi pengguna yang kuat, meningkatkan risiko akses tidak sah.

**Status:**
- WEP dianggap usang dan tidak aman sejak tahun 2004, ketika standar IEEE merekomendasikan penggunaan protokol yang lebih aman seperti WPA dan WPA2.
- Rekomendasi Penggunaan:
- Tidak direkomendasikan untuk digunakan dalam jaringan modern karena kerentanannya yang signifikan. Sebagai gantinya, gunakan protokol keamanan yang lebih baru seperti WPA3 atau setidaknya WPA2.

### WPA (Wi-Fi Protected Access)

WPA adalah protokol keamanan nirkabel yang dikembangkan untuk mengatasi kelemahan WEP (Wired Equivalent Privacy) berdasarkan standar IEEE 802.11. WPA dirancang sebagai solusi sementara sebelum peluncuran WPA2, menawarkan keamanan yang lebih baik untuk jaringan Wi-Fi.

**Tahun Rilis:** 2003

**Karakteristik:**
- Menggunakan algoritma enkripsi RC4 dengan TKIP (Temporal Key Integrity Protocol) untuk meningkatkan keamanan dibandingkan WEP.
- Mendukung kunci dinamis melalui 802.1X untuk autentikasi berbasis server (WPA-Enterprise) atau kunci bersama (Pre-Shared Key/PSK) untuk WPA-Personal.
- Panjang kunci hingga 256-bit, dengan pembaruan kunci secara periodik untuk mencegah serangan berulang.
- Menyediakan mekanisme integritas data yang lebih kuat melalui Message Integrity Check (MIC).

**Kelemahan:**
- TKIP masih rentan terhadap beberapa serangan, seperti serangan Beck-Tews yang memungkinkan dekripsi paket tertentu dalam kondisi tertentu.
- Tidak sekuat WPA2 atau WPA3 karena masih bergantung pada RC4, yang memiliki kelemahan kriptografis.
- Performa jaringan dapat menurun karena overhead pemrosesan TKIP.

**Status:**
WPA dianggap usang sejak diperkenalkannya WPA2 pada tahun 2004. Penggunaan WPA saat ini tidak direkomendasikan untuk jaringan modern karena adanya protokol yang lebih aman seperti WPA2 dan WPA3.

### WPA2 (Wi-Fi Protected Access 2)

WPA2 adalah protokol keamanan nirkabel generasi kedua yang mengimplementasikan standar lengkap IEEE 802.11i. Dikembangkan untuk menggantikan WPA dan WEP, WPA2 menawarkan keamanan yang lebih kuat untuk jaringan Wi-Fi dan menjadi standar wajib hingga diperkenalkannya WPA3.

**Tahun Rilis:** 2004

**Karakteristik:**
- Menggunakan algoritma enkripsi AES (Advanced Encryption Standard) dengan CCMP (Counter Mode with Cipher Block Chaining Message Authentication Code Protocol) untuk perlindungan data yang lebih aman.
- Mendukung dua mode: WPA2-Personal (menggunakan Pre-Shared Key/PSK untuk jaringan rumah atau kantor kecil) dan WPA2-Enterprise (menggunakan 802.1X untuk autentikasi berbasis server RADIUS).
- Panjang kunci enkripsi 128-bit, dengan pembaruan kunci dinamis melalui 4-way handshake untuk Pairwise Transient Key (PTK) dan Group Temporal Key (GTK).
- Menyediakan Protected Management Frames (PMF) opsional untuk melindungi dari serangan deautentikasi.

**Kelemahan:**
- Rentan terhadap serangan KRACK (Key Reinstallation Attack) pada 2017, yang mengeksploitasi 4-way handshake untuk mendekripsi data (memerlukan patch perangkat).
- FragAttacks (2021) mengeksploitasi kerentanan pada fragmentasi frame Wi-Fi, memungkinkan pencurian data atau serangan DoS.
- Kata sandi lemah pada mode Personal rentan terhadap serangan brute-force menggunakan alat seperti Aircrack-ng.
- Tidak mendukung forward secrecy, sehingga kunci yang dikompromikan dapat membahayakan lalu lintas sebelumnya.

**Status:**
WPA2 masih banyak digunakan pada tahun 2025 karena kompatibilitasnya yang luas, tetapi dianggap kurang aman dibandingkan WPA3. Sejak 2020, WPA3 menjadi standar wajib untuk sertifikasi Wi-Fi, dan WPA2 dianggap usang untuk jaringan baru.

### WPA3 (Wi-Fi Protected Access 3)

WPA3 adalah protokol keamanan nirkabel generasi ketiga yang diperkenalkan oleh Wi-Fi Alliance sebagai penerus WPA2. Berbasis standar IEEE 802.11, WPA3 dirancang untuk meningkatkan keamanan jaringan Wi-Fi dengan mengatasi kelemahan WPA2 dan mendukung fitur keamanan modern.

**Tahun Rilis:** 2018

**Karakteristik:**
- Menggunakan algoritma enkripsi AES dengan GCMP-256 (Galois/Counter Mode Protocol) untuk keamanan data yang lebih kuat dibandingkan CCMP pada WPA2.
- Menggantikan Pre-Shared Key (PSK) dengan SAE (Simultaneous Authentication of Equals), protokol berbasis Dragonfly Key Exchange, untuk mencegah serangan offline seperti brute-force pada kata sandi.
- Mendukung dua mode: WPA3-Personal (untuk jaringan rumah dengan autentikasi berbasis kata sandi) dan WPA3-Enterprise (untuk lingkungan korporat dengan autentikasi 802.1X dan enkripsi 192-bit).
- Menyediakan Forward Secrecy, memastikan data masa lalu tetap aman meskipun kunci utama dikompromikan.
- Wajib menggunakan Protected Management Frames (PMF) untuk melindungi dari serangan deautentikasi dan manipulasi frame.

**Kelemahan:**
- Kompatibilitas terbatas pada perangkat lama yang tidak mendukung WPA3, memaksa penggunaan mode transisi (WPA2/WPA3) yang dapat menurunkan keamanan.
- Beberapa implementasi awal rentan terhadap serangan seperti Dragonblood (2019), yang mengeksploitasi kelemahan SAE, meskipun patch telah tersedia.
- Membutuhkan perangkat keras yang lebih modern, yang dapat meningkatkan biaya untuk jaringan skala besar.
- Serangan side-channel atau konfigurasi buruk (misalnya, kata sandi lemah) masih dapat menimbulkan risiko, meskipun lebih kecil dibandingkan WPA2.

**Status:**
Pada tahun 2025, WPA3 adalah standar keamanan Wi-Fi terkini dan wajib untuk sertifikasi perangkat Wi-Fi sejak 2020. WPA3 menawarkan perlindungan terbaik untuk jaringan modern, meskipun adopsinya masih terbatas oleh kompatibilitas perangkat.

### Tabel Rangkuman Perbandingan Protokol Keamanan
| Protokol | Tahun | Enkripsi | Keamanan | Status | Rekomendasi |
|:--:|:--:|:--:|:--:|:--:|:--:|
| WEP | 1997 | RC4 (64/128-bit) | Sangat Lemah | Deprecated | Jangan Gunakan |
| WPA | 2003 | TKIP (RC4) | Lemah | Deprecated | Jangan Gunakan |
| WPA2 | 2004 | AES-CCMP | Kuat | Active | Minimum Standard |
| WPA3 | 2018 | AES-CCMP (128/192-bit) | Sangat Kuat | Active | Sangat Direkomendasikan |

## Metode Autentikasi

### 1. Open Authentication

Open Authentication adalah metode autentikasi Wi-Fi yang tidak memerlukan kredensial seperti kata sandi atau kunci keamanan. Siapa pun dalam jangkauan sinyal dapat terhubung ke jaringan tanpa proses verifikasi, menjadikannya metode dengan keamanan paling rendah.

**Karakteristik:**
- Tidak memerlukan autentikasi pengguna, memungkinkan akses langsung ke jaringan.
- Tanpa enkripsi data bawaan (kecuali menggunakan WPA3 Enhanced Open, yang menyediakan enkripsi berbasis Opportunistic Wireless Encryption/OWE untuk melindungi data tanpa autentikasi).
- Semua lalu lintas jaringan rentan terhadap penyadapan (eavesdropping) jika tidak dienkripsi.
- Risiko keamanan sangat tinggi karena tidak ada kontrol akses pengguna.

**Penggunaan:**
- Jaringan Wi-Fi publik seperti di kafe, bandara, mal, atau tempat umum lainnya.
- Jaringan tamu (guest network) yang dikombinasikan dengan captive portal untuk autentikasi tambahan (misalnya: login melalui browser).
- Cocok untuk lingkungan yang mengutamakan kemudahan akses daripada keamanan.

### 2. Pre-Shared Key (PSK)

Pre-Shared Key (PSK) adalah metode autentikasi Wi-Fi yang menggunakan kunci rahasia bersama (kata sandi) untuk mengamankan akses ke jaringan. PSK digunakan dalam mode WPA-Personal (WPA, WPA2, atau WPA3) dan cocok untuk jaringan rumah atau kantor kecil tanpa server autentikasi.

**Karakteristik:**
- Memerlukan kata sandi atau kunci rahasia yang sama untuk diatur di access point dan perangkat klien sebelum koneksi.
- Mendukung enkripsi data menggunakan protokol seperti TKIP (WPA), AES-CCMP (WPA2), atau AES-GCMP (WPA3), tergantung pada versi WPA yang digunakan.
- Autentikasi dilakukan melalui proses 4-way handshake (pada WPA/WPA2) atau Simultaneous Authentication of Equals (SAE) pada WPA3 untuk menghasilkan kunci enkripsi sementara.
- Tidak memerlukan server RADIUS, menjadikannya sederhana untuk lingkungan non-enterprise.

**Penggunaan:**  
- Jaringan Wi-Fi rumah atau kantor kecil yang tidak memerlukan autentikasi berbasis server.
- Jaringan dengan jumlah pengguna terbatas yang dapat berbagi kata sandi dengan aman.
- Cocok untuk lingkungan yang mengutamakan kemudahan pengaturan dengan tingkat keamanan sedang hingga tinggi (tergantung pada kata sandi dan versi WPA).

### 3. Enterprise Authentication (RADIUS, 802.1X)

Enterprise Authentication adalah metode autentikasi Wi-Fi yang menggunakan protokol 802.1X dan server RADIUS (Remote Authentication Dial-In User Service) untuk mengelola akses jaringan secara terpusat. Digunakan dalam mode WPA-Enterprise (WPA, WPA2, atau WPA3), metode ini cocok untuk lingkungan korporat atau organisasi besar yang membutuhkan keamanan tinggi dan manajemen pengguna yang ketat.

**Karakteristik:**
- Memerlukan server RADIUS untuk memverifikasi kredensial pengguna (seperti nama pengguna, kata sandi, atau sertifikat digital) sebelum memberikan akses jaringan.
- Menggunakan protokol 802.1X dengan EAP (Extensible Authentication Protocol) untuk mendukung berbagai metode autentikasi, seperti EAP-TLS, EAP-PEAP, atau EAP-TTLS.
- Mendukung enkripsi data dengan TKIP (WPA), AES-CCMP (WPA2), atau AES-GCMP (WPA3), tergantung pada versi WPA yang digunakan.
- Menyediakan kunci enkripsi dinamis per pengguna melalui proses 4-way handshake (WPA/WPA2) atau SAE (WPA3), meminimalkan risiko kompromi kunci.

**Penggunaan:**
- Jaringan Wi-Fi di lingkungan perusahaan, universitas, atau institusi besar dengan banyak pengguna.
- Jaringan yang memerlukan autentikasi berbasis identitas individu, seperti karyawan atau mahasiswa, dengan kontrol akses yang terperinci.
- Cocok untuk lingkungan yang membutuhkan keamanan tinggi dan kemampuan untuk mencabut akses pengguna secara cepat.
