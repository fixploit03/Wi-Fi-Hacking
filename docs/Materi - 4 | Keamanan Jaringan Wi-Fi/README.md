# Materi - 4 | Keamanan Jaringan Wi-Fi

![Materi - 4 | Keamanan Jaringan Wi-Fi](https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/Materi%20-%204%20%7C%20Keamanan%20Jaringan%20Wi-Fi/img/materi%204.jpg)

Keamanan jaringan Wi-Fi adalah aspek krusial dalam melindungi data dan privasi pengguna dari akses tidak sah. Jaringan Wi-Fi yang tidak aman dapat menjadi pintu masuk bagi serangan siber, pencurian data, hingga penyalahgunaan bandwidth.

## 4.1 Protokol Keamanan Wi-Fi

### 4.1.1 WEP (Wired Equivalent Privacy)

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

### 4.1.2 WPA (Wi-Fi Protected Access)

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

### 4.1.3 WPA2 (Wi-Fi Protected Access 2)

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

### 4.1.4 WPA3 (Wi-Fi Protected Access 3)

WPA3 adalah protokol keamanan nirkabel generasi ketiga yang diperkenalkan oleh Wi-Fi Alliance sebagai penerus WPA2. Berbasis standar IEEE 802.11, WPA3 dirancang untuk meningkatkan keamanan jaringan Wi-Fi dengan mengatasi kelemahan WPA2 dan mendukung fitur keamanan modern.

**Tahun Rilis:** 2018  

**Karakteristik:**  
- Menggunakan algoritma enkripsi AES dengan GCMP-256 (Galois/Counter Mode Protocol) untuk keamanan data yang lebih kuat dibandingkan CCMP pada WPA2.
- WPA3 memperkenalkan SAE (Simultaneous Authentication of Equals) untuk menggantikan PSK tradisional dan menggunakan AES-GCMP (GCMP-128/256). SAE mengurangi risiko serangan offline terhadap kata sandi. Untuk sertifikasi WPA3, perangkat wajib mendukung Protected Management Frames (PMF), sehingga serangan deauthentication lebih sulit.)
- **Mendukung dua mode:** WPA3-Personal (untuk jaringan rumah dengan autentikasi berbasis kata sandi) dan WPA3-Enterprise (untuk lingkungan korporat dengan autentikasi 802.1X dan enkripsi 192-bit).
- Menyediakan Forward Secrecy, memastikan data masa lalu tetap aman meskipun kunci utama dikompromikan.

**Kelemahan:**  
- Kompatibilitas terbatas pada perangkat lama yang tidak mendukung WPA3, memaksa penggunaan mode transisi (WPA2/WPA3) yang dapat menurunkan keamanan.
- Beberapa implementasi awal rentan terhadap serangan seperti Dragonblood (2019), yang mengeksploitasi kelemahan SAE, meskipun patch telah tersedia.
- Membutuhkan perangkat keras yang lebih modern, yang dapat meningkatkan biaya untuk jaringan skala besar.
- Serangan side-channel atau konfigurasi buruk (misalnya, kata sandi lemah) masih dapat menimbulkan risiko, meskipun lebih kecil dibandingkan WPA2.

**Status:**  
Pada tahun 2025, WPA3 adalah standar keamanan Wi-Fi terkini dan wajib untuk sertifikasi perangkat Wi-Fi sejak 2020. WPA3 menawarkan perlindungan terbaik untuk jaringan modern, meskipun adopsinya masih terbatas oleh kompatibilitas perangkat.

### 4.1.5 Tabel Rangkuman Perbandingan Protokol Keamanan

| Protokol | Tahun | Enkripsi | Keamanan | Status | Rekomendasi |
|:--:|:--:|:--:|:--:|:--:|:--:|
| WEP | 1997 | RC4 (64/128-bit) | Sangat Lemah | Deprecated | Jangan Gunakan |
| WPA | 2003 | TKIP (RC4) | Lemah | Deprecated | Jangan Gunakan |
| WPA2 | 2004 | AES-CCMP | Kuat | Active | Minimum Standard |
| WPA3 | 2018 | AES-CCMP (128/192-bit) | Sangat Kuat | Active | Sangat Direkomendasikan |

## 4.2 Cipher

Cipher adalah algoritma kriptografi yang digunakan untuk mengenkripsi dan melindungi data yang dikirim melalui jaringan Wi-Fi. Cipher bertugas menjaga kerahasiaan dan integritas data, bekerja bersama protokol autentikasi untuk menghasilkan kunci dinamis.

Dalam konteks Wi-Fi, cipher dipilih berdasarkan versi protokol keamanan (WEP, WPA, WPA2, WPA3) dan kebutuhan jaringan (performa vs. keamanan).

### 4.2.1 Karakteristik-Karakteristik Cipher

#### 4.2.1.1 RC4

- Digunakan pada WEP dan WPA dengan TKIP (Temporal Key Integrity Protocol).
- Merupakan stream cipher yang cepat.
- Kelemahan: Rentan terhadap serangan kriptografis, sehingga tidak direkomendasikan untuk jaringan modern.

#### 4.2.1.2 AES-CCMP

- Digunakan pada WPA2 (standar modern).
- Merupakan block cipher dengan enkripsi 128-bit.
- Menyediakan enkripsi dan autentikasi data (data integrity).
- Cocok untuk sebagian besar jaringan modern hingga 2025.

#### 4.2.1.3 AES-GCMP

- Digunakan pada WPA3.
- Menawarkan enkripsi 128-bit untuk WPA3-Personal dan 256-bit untuk WPA3-Enterprise.
- Lebih efisien dibanding CCMP dan dilengkapi dengan Galois Message Authentication Code (GMAC) untuk perlindungan tambahan.

### 4.2.2 Cara Kerja Cipher

Cipher bekerja bersama protokol autentikasi (misalnya PSK atau 802.1X/EAP) untuk menghasilkan kunci dinamis:
  - Pairwise Transient Key (PTK): Kunci untuk komunikasi unicast antara client dan AP.
  - Group Temporal Key (GTK): Kunci untuk komunikasi broadcast/multicast dalam jaringan.

### 4.2.3 Tabel Penggunaan Cipher

| Cipher | Protokol	| Keterangan |
|:--:|:--:|:--:|
| RC4/TKIP | WEP, WPA | Hanya untuk perangkat lama, sudah usang dan kurang aman. |
| AES-CCMP | WPA2 | Standar modern, aman untuk kebanyakan jaringan. |
| AES-GCMP | WPA3 | Digunakan untuk keamanan tinggi, efisien, cocok untuk enterprise & IoT. |

**Catatan:**  
Selalu gunakan cipher modern (AES-CCMP atau AES-GCMP) untuk mencegah serangan keamanan. Hindari RC4/TKIP kecuali diperlukan kompatibilitas perangkat lama.

## 4.3 Metode Autentikasi

### 4.3.1 Open Authentication

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

### 4.3.2 Pre-Shared Key (PSK)

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

### 4.3.3 Enterprise Authentication (RADIUS, 802.1X)

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

## 4.4 Handshake Process

Dalam keamanan Wi-Fi, handshake adalah proses pertukaran informasi kriptografi antara station (STA) dan access point (AP) sebelum koneksi aman dapat dilakukan. Handshake memastikan kedua pihak memiliki kunci enkripsi yang sama untuk melindungi komunikasi data.

Handshake paling umum digunakan adalah 4-Way Handshake pada WPA/WPA2, serta konsep PMKID untuk autentikasi cepat.

### 4.4.1 4-Way Handshake (WPA/WPA2)

4-Way Handshake terjadi setelah STA berhasil mengautentikasi diri ke AP. Tujuan utama handshake ini adalah:
- Membuktikan bahwa STA dan AP memiliki kunci utama yang sama (PMK – Pairwise Master Key).
- Menetapkan kunci sementara (PTK – Pairwise Transient Key) untuk mengenkripsi data.
- Menukar Nonce (angka acak) untuk menghasilkan kunci unik setiap sesi.

### 4.4.2 Alur dasar 4-Way Handshake

| Step | Dari | Ke | Tujuan |
|:--:|:--:|:--:|:--|
| 1 | AP | STA | Mengirim ANonce (AP Nonce) |
| 2 | STA | AP | Mengirim SNonce (STA Nonce) + MIC |
| 3 | AP | STA | Mengirim Group Temporal Key (GTK) + MIC |
| 4 | STA | AP | Konfirmasi penerimaan GTK (ACK) 

**Penjelasan istilah penting:**
- **PMK (Pairwise Master Key):** Kunci utama dari PSK atau 802.1X.
- **PTK (Pairwise Transient Key):** Kunci sementara untuk mengenkripsi data unicast.
- **GTK (Group Temporal Key):** Kunci untuk data broadcast/multicast.
- **Nonce:** Angka acak untuk memastikan setiap sesi memiliki kunci unik.
- **MIC (Message Integrity Code):** Digunakan untuk memverifikasi integritas pesan.

**Catatan:**  
4-Way Handshake ini merupakan target utama dalam serangan WPA/WPA2 cracking, karena handshake berisi informasi yang bisa digunakan untuk menebak PSK jika dicapture.

### 4.4.3 Ilustrasi Alur 4-Way Handshake

![Ilustrasi Alur 4-Way Handshake](https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/Materi%20-%204%20%7C%20Keamanan%20Jaringan%20Wi-Fi/img/4way%20handshake.png)

**Keterangan:**  
- ANonce dikirim AP untuk memulai handshake.
- SNonce + MIC dikirim STA sebagai respon dengan Nonce sendiri.
- AP mengirim GTK + MIC agar STA bisa menerima broadcast/multicast.
- STA mengirim ACK sebagai konfirmasi.

Alur ini memastikan kunci enkripsi aman sebelum data dienkripsi dan dikirim.

## 4.5 PMKID

PMKID (Pairwise Master Key Identifier) adalah hash identitas kunci utama (PMK) yang digunakan untuk autentikasi cepat.
- PMKID biasanya ditemukan di RSN IE (Robust Security Network Information Element) pada frame Association Response.
- PMKID memungkinkan STA terhubung kembali ke AP tanpa harus melakukan full 4-Way Handshake.
- Serangan modern pada WPA/WPA2 sering menargetkan PMKID karena bisa dicapture langsung tanpa menunggu handshake penuh.
  
### 4.5.1 Kelebihan PMKID

- Mempercepat roaming (handoff) antar AP.
- Mengurangi overhead handshake penuh jika STA sudah pernah terhubung sebelumnya.

### 4.5.2 Kelemahan PMKID

Jika dicapture, PMKID dapat digunakan untuk melakukan serangan offline terhadap PSK, sehingga tetap perlu keamanan PSK yang kuat.

# 4.6 Jenis-Jenis Serangan pada Jaringan Wi-Fi

Berikut adalah jenis-jenis serangan pada jaringan Wi-Fi:

## 4.6.1 Serangan Fundamental

### 4.6.1.1 Packet Sniffing (Passive Monitoring)

Packet Sniffing adalah serangan yang melibatkan penyadapan lalu lintas jaringan Wi-Fi untuk menangkap paket data yang dikirim antara client dan AP tanpa mengganggu komunikasi.

### 4.6.1.2 MAC Spoofing Attack

MAC Spoofing Attack adalah serangan yang mengubah alamat MAC penyerang untuk menyamar sebagai client atau AP yang sah. Digunakan untuk melewati filter MAC atau mendukung serangan lain.

### 4.6.1.3 Rogue Access Point Attack

Rogue Access Point Attack adalah serangan yang membuat AP tidak sah untuk memberikan akses ke jaringan internal atau mencuri data. AP palsu bisa meniru SSID (Evil Twin) atau menggunakan SSID berbeda dari jaringan target.

### 4.6.1.4 Evil Twin Attack

Evil Twin Attack adalah serangan yang membuat AP palsu dengan SSID identik dengan jaringan target untuk menipu client agar terhubung. Merupakan subset spesifik dari Rogue AP yang fokus pada impersonation.

## 4.6.2 Serangan Pada Protokol Keamanan

### 4.6.2.1 WEP (Wired Equivalent Privacy)

#### 4.6.2.1.1 FMS Attack

FMS Attack mengeksploitasi kelemahan algoritma RC4 dalam WEP dengan mengumpulkan IV lemah dari paket data. Membutuhkan ratusan ribu hingga jutaan IV untuk memecahkan kunci WEP.

#### 4.6.2.1.2 KoreK Attack

KoreK Attack adalah versi lebih cepat dari FMS Attack dengan analisis statistik IV yang lebih efisien.

#### 4.6.2.1.3 PTW Attack

PTW Attack menargetkan kelemahan spesifik WEP, hanya membutuhkan 20.000–50.000 IV untuk memecahkan kunci. Default di Aircrack-NG.

#### 4.6.2.1.4 Fragmentation Attack

Memanipulasi fragmen paket untuk merekonstruksi kunci WEP. Biasanya dipadukan dengan Chop-Chop atau ARP Replay.

#### 4.6.2.1.5 Chop-Chop Attack

Mendekripsi satu paket WEP tanpa kunci langsung dengan memotong paket dan merekonstruksi data via AP.

#### 4.6.2.1.6 ARP Request Replay Attack

Menangkap dan mengirim ulang paket ARP untuk memaksa AP menghasilkan lebih banyak IV, mempercepat serangan WEP.

#### 4.6.2.1.7 Fake Authentication Attack

Mengelabui AP agar menerima penyerang sebagai client sah, memungkinkan injeksi paket ke jaringan.

#### 4.6.2.1.8 Caffe Latte Attack

Menargetkan client yang pernah terhubung ke jaringan WEP melalui AP palsu (Evil Twin) untuk menghasilkan IV.

#### 4.6.2.1.9 Hirte Attack

Versi canggih dari Caffe Latte Attack, memanipulasi data client untuk menghasilkan IV tanpa akses ke AP asli.

### 4.6.2.2 WPA/WPA2-Personal (PSK)

#### 4.6.2.2.1 Capture Handshake

Menangkap 4-way handshake antara client dan AP. Handshake ini berisi hash kata sandi untuk serangan Dictionary, Brute Force, atau Rainbow Table.

#### 4.6.2.2.2 Deauthentication Attack

Mengirim paket deautentikasi palsu untuk memutus client, memaksa handshake baru yang bisa ditangkap.

#### 4.6.2.2.3 PMKID Attack

Mengeksploitasi PMKID dalam frame RSN tanpa perlu 4-way handshake lengkap. Digunakan untuk memecahkan kata sandi WPA/WPA2-PSK.

#### 4.6.2.2.4 Dictionary Attack

Mencocokkan hash handshake dengan daftar kata (wordlist) untuk menebak kata sandi.

#### 4.6.2.2.5 Brute Force Attack

Mencoba semua kombinasi karakter untuk memecahkan kata sandi WPA/WPA2-PSK.

#### 4.6.2.2.6 Rainbow Table Attack

Memanfaatkan tabel hash pre-computed untuk mempercepat pemecahan kata sandi berdasarkan SSID target.

#### 4.6.2.2.7 Evil Twin Attack

Membuat AP palsu dengan SSID sama untuk menangkap handshake, data autentikasi, atau lalu lintas client.

#### 4.6.2.2.8 KRACK Attack

Memanfaatkan kelemahan pada implementasi 4-way handshake WPA2 untuk memaksa reinstall kunci enkripsi, memungkinkan dekripsi paket.

### 4.6.2.3 WPA/WPA2-Enterprise (802.1X)

#### 4.6.2.3.1 EAP Handshake Capture

Menangkap paket autentikasi EAP antara client dan server RADIUS, berisi hash kata sandi atau kredensial.

#### 4.6.2.3.2 MITM Attack

Menyamar sebagai AP atau server RADIUS untuk mencegat komunikasi dan kredensial.

#### 4.6.2.3.3 Evil Twin Attack

Membuat AP palsu untuk merekam kredensial autentikasi client.

#### 4.6.2.3.4 Downgrade Attack

Memaksa client menggunakan metode EAP yang kurang aman untuk memudahkan serangan.

#### 4.6.2.3.5 RADIUS Impersonation Attack

Menyamar sebagai server RADIUS untuk menerima kredensial client.

#### 4.6.2.3.6 Dictionary Attack

Mencocokkan hash EAP (mis. MS-CHAPv2) dengan wordlist untuk memecahkan kredensial.

#### 4.6.2.3.7 Brute Force Attack

Mencoba semua kombinasi karakter untuk memecahkan kata sandi client.

### 4.6.2.4 WPA3-Personal (SAE)

#### 4.6.2.4.1 Dragonblood Attack

Mengeksploitasi kelemahan implementasi SAE, termasuk timing, side-channel, dan kebocoran kata sandi.

#### 4.6.2.4.2 Downgrade Attack

Memaksa client WPA3 ke protokol WPA2-PSK untuk mempermudah serangan.

#### 4.6.2.4.3 Side-Channel Attack

Mengeksploitasi kebocoran informasi dari implementasi SAE untuk mengekstrak kunci atau mempersempit kata sandi.

#### 4.6.2.4.4 Evil Twin Via Downgrade

Membuat AP palsu untuk memaksa client WPA3 menggunakan mode transisi WPA2.

#### 4.6.2.4.5 Denial-of-Service (DoS)

Membanjiri AP atau client dengan frame SAE palsu, mengganggu autentikasi.

### 4.6.2.5 WPS

#### 4.6.2.5.1 PIN Brute Force Attack

Mencoba semua kombinasi PIN WPS (8 digit, dibagi dua) untuk mendapatkan kunci WPA/WPA2-PSK (~11.000 kombinasi).

#### 4.6.2.5.2 Pixie Dust Attack

Mengeksploitasi kelemahan WPS tertentu (Broadcom/Ralink) untuk mendapatkan PIN langsung.

#### 4.6.2.5.3 Physical Access Attack (Push Button Configuration)

Memanfaatkan PBC WPS dengan menekan tombol fisik pada AP/client.

#### 4.6.2.5.4 Null PIN Attack

Memanfaatkan AP yang menerima PIN kosong atau default sebagai valid.

#### 4.6.2.5.5 Known PIN Attack

Menggunakan PIN WPS yang sudah diketahui untuk mendapatkan akses tanpa cracking tambahan.

### 4.6.2.6 Serangan Lainnya

#### 4.6.2.6.1 Beacon Flooding Attack

Mengirim frame beacon palsu untuk membuat banyak AP fiktif terlihat, mengacaukan pemindai jaringan.

#### 4.6.2.6.2 Authentication DoS Attack

Mengirim frame autentikasi palsu ke semua AP dalam jangkauan untuk membebani mereka.

#### 4.6.2.6.3 SSID Probing and Bruteforcing Attack

Mengirim probe request untuk mendeteksi hidden SSID dan melakukan bruteforce jika perlu.

#### 4.6.2.6.4 Deauthentication Attack

Mengirim paket deautentikasi palsu untuk memutus koneksi client dan menangkap handshake.

#### 4.6.2.6.5 Disassociation Attack

Mengirim paket disasosiasi palsu untuk memutus asosiasi client-AP.

#### 4.6.2.6.6 Michael Countermeasures Exploitation Attack

Mengeksploitasi fitur Michael Countermeasures pada AP dengan TKIP, memicu DoS.

#### 4.6.2.6.7 EAPOL Start and Logoff Packet Injection Attack

Membanjiri AP dengan frame EAPOL Start atau Logoff palsu untuk mengganggu autentikasi.

#### 4.6.2.6.8 Mesh Network Attacks (IEEE 802.11s)

Menargetkan jaringan mesh Wi-Fi, mengganggu manajemen tautan atau rute.

#### 4.6.2.6.9 WIDS/WIPS Confusion Attack

Mengacaukan sistem deteksi/pencegahan intrusi nirkabel dengan AP palsu atau node WDS.

#### 4.6.2.6.10 Packet Fuzzer Attack

Mengirim paket acak/rusak ke AP/client untuk menguji ketahanan atau menemukan kerentanan.
