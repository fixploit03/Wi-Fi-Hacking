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

Packet Sniffing adalah teknik penyadapan pasif terhadap lalu lintas jaringan Wi-Fi dengan cara menangkap dan menganalisis paket data yang dikirim antara client dan Access Point tanpa mengganggu atau mengubah komunikasi yang sedang berlangsung, bertujuan untuk mencuri informasi sensitif seperti kredensial login, session cookies, dan data pribadi.

### 4.6.1.2 MAC Spoofing Attack

MAC Spoofing Attack adalah serangan yang dilakukan dengan mengubah atau memalsukan alamat MAC perangkat penyerang agar menyerupai alamat MAC perangkat yang sah dalam jaringan, dengan tujuan untuk melewati kontrol akses berbasis MAC filtering atau sebagai bagian dari serangan yang lebih kompleks.

### 4.6.1.3 Rogue Access Point Attack

Rogue Access Point Attack adalah serangan yang dilakukan dengan memasang Access Point palsu yang menyerupai jaringan Wi-Fi yang sah untuk menipu pengguna agar terhubung ke jaringan tersebut, sehingga penyerang dapat menyadap, memanipulasi, atau mencuri data yang dikirimkan oleh korban yang terhubung ke Access Point palsu tersebut.

### 4.6.1.4 Evil Twin Attack

Evil Twin Attack adalah serangan yang dilakukan dengan membuat Access Point palsu yang memiliki nama (SSID) identik dengan jaringan Wi-Fi yang sah dan biasanya menggunakan sinyal yang lebih kuat, sehingga perangkat pengguna secara otomatis terhubung ke Access Point palsu tersebut, memungkinkan penyerang untuk menyadap seluruh komunikasi, mencuri kredensial login, dan melakukan Man-in-the-Middle attack terhadap korban.

## 4.6.2 Serangan Pada Protokol Keamanan

### 4.6.2.1 WEP (Wired Equivalent Privacy)

#### 4.6.2.1.1 FMS Attack

FMS Attack (Fluhrer, Mantin, and Shamir Attack) adalah serangan kriptanalisis terhadap protokol WEP yang memanfaatkan kelemahan dalam algoritma penjadwalan kunci (key scheduling algorithm) dari cipher stream RC4, dengan cara mengumpulkan sejumlah besar Initialization Vector (IV) yang lemah dari paket data yang ditangkap untuk secara statistik menganalisis dan memulihkan kunci WEP dalam waktu relatif singkat tanpa memerlukan autentikasi ke jaringan.

#### 4.6.2.1.2 KoreK Attack

KoreK Attack adalah serangan kriptanalisis lanjutan terhadap protokol WEP yang dikembangkan oleh seorang peneliti bernama KoreK, merupakan penyempurnaan dari FMS Attack dengan menambahkan beberapa teknik statistik baru yang lebih efisien dalam mengekstraksi kunci WEP dari paket data yang ditangkap, sehingga dapat memecahkan kunci enkripsi WEP dengan lebih cepat menggunakan jumlah paket yang lebih sedikit dan telah diimplementasikan dalam tools populer seperti Aircrack-ng.

#### 4.6.2.1.3 PTW Attack

PTW Attack (Pyshkin, Tews, Weinmann Attack) adalah serangan kriptanalisis paling efisien terhadap protokol WEP yang dikembangkan pada tahun 2007, menggunakan pendekatan statistik yang lebih canggih dengan hanya memerlukan paket data ARP (Address Resolution Protocol) untuk menganalisis dan memecahkan kunci WEP 104-bit dalam waktu kurang dari satu menit dengan mengumpulkan sekitar 40.000-85.000 paket data, menjadikannya metode tercepat untuk membobol enkripsi WEP dan telah diintegrasikan ke dalam Aircrack-NG sebagai metode serangan default.

#### 4.6.2.1.4 Fragmentation Attack

Fragmentation Attack adalah teknik serangan terhadap WEP yang memanfaatkan fitur fragmentasi paket dalam protokol 802.11 untuk mendapatkan keystream (aliran kunci) dari enkripsi RC4 dengan cara menangkap paket data terfragmentasi yang kecil, kemudian menggunakan keystream tersebut untuk membuat dan menyuntikkan paket data palsu ke dalam jaringan guna mempercepat proses pengumpulan Initialization Vector (IV) yang diperlukan untuk memecahkan kunci WEP, bahkan ketika lalu lintas jaringan sangat minim.

#### 4.6.2.1.5 Chop-Chop Attack

Chop-Chop Attack adalah teknik serangan terhadap WEP yang dikembangkan oleh KoreK untuk mendekripsi paket data dan memulihkan keystream tanpa mengetahui kunci enkripsi, dengan cara memotong byte terakhir dari paket terenkripsi secara berulang dan mengirimkannya kembali ke Access Point untuk mengamati respons valid atau tidaknya paket tersebut, sehingga penyerang dapat secara bertahap mendekode seluruh isi paket dan menggunakan keystream yang diperoleh untuk membuat paket injeksi guna mempercepat proses cracking kunci WEP.

#### 4.6.2.1.6 ARP Request Replay Attack

ARP Request Replay Attack adalah teknik serangan terhadap WEP yang dilakukan dengan menangkap paket ARP request yang terenkripsi dari lalu lintas jaringan, kemudian mengirimkan ulang (replay) paket tersebut secara berulang-ulang ke Access Point untuk memaksa AP menghasilkan respons ARP dengan Initialization Vector (IV) yang berbeda-beda, sehingga dalam waktu singkat penyerang dapat mengumpulkan jutaan paket dengan IV unik yang diperlukan untuk melakukan cracking kunci WEP menggunakan serangan statistik seperti PTW atau FMS Attack.

#### 4.6.2.1.7 Fake Authentication Attack

Fake Authentication Attack adalah teknik serangan terhadap WEP yang dilakukan dengan melakukan proses autentikasi palsu ke Access Point menggunakan alamat MAC yang di-spoof tanpa mengetahui kunci WEP yang sebenarnya, memanfaatkan kelemahan dalam mekanisme Open System Authentication atau Shared Key Authentication untuk membuat Access Point menganggap penyerang sebagai client yang sah dan terasosiasi dengan jaringan, sehingga penyerang dapat melakukan packet injection seperti ARP replay atau serangan lainnya yang memerlukan status terasosiasi untuk mempercepat proses pengumpulan IV dan cracking kunci WEP.

#### 4.6.2.1.8 Caffe Latte Attack

Caffe Latte Attack adalah teknik serangan terhadap WEP yang dapat dilakukan tanpa kehadiran Access Point asli, dengan cara membuat rogue AP yang menyerupai jaringan yang tersimpan di perangkat client untuk memancing client melakukan koneksi, kemudian memanipulasi paket ARP yang dikirim oleh client dengan mengembalikannya kembali ke client sehingga tercipta lalu lintas data yang dapat ditangkap untuk mengumpulkan Initialization Vector (IV) yang cukup guna memecahkan kunci WEP, serangan ini sangat efektif di tempat umum seperti kafe karena menargetkan client yang mencoba terhubung secara otomatis ke jaringan yang familiar.

#### 4.6.2.1.9 Hirte Attack

Hirte Attack adalah teknik serangan terhadap WEP yang merupakan pengembangan dari Caffe Latte Attack, dirancang untuk memecahkan kunci enkripsi WEP dari client yang tidak terhubung ke Access Point dengan cara yang lebih cepat dan efisien, dengan memanfaatkan tidak hanya paket ARP tetapi juga berbagai jenis paket data lain seperti IP atau fragmented packets yang dikirim oleh client, kemudian memanipulasi dan mengirimkannya kembali untuk menghasilkan lalu lintas yang dapat digunakan untuk mengumpulkan Initialization Vector (IV) dalam jumlah besar, sehingga proses cracking kunci WEP dapat dilakukan lebih cepat bahkan pada jaringan dengan traffic yang sangat rendah.

### 4.6.2.2 WPA/WPA2-Personal (PSK)

#### 4.6.2.2.1 Capture Handshake

Capture Handshake adalah teknik serangan terhadap WPA/WPA2-PSK yang dilakukan dengan menangkap proses 4-way handshake yang terjadi saat client melakukan autentikasi dan terhubung ke Access Point, di mana handshake ini berisi informasi terenkripsi yang mencakup hash dari password jaringan (PMK - Pairwise Master Key), sehingga setelah handshake berhasil ditangkap menggunakan tools seperti Airodump-NG, penyerang dapat melakukan serangan offline dictionary attack atau brute-force attack untuk memecahkan password tanpa perlu tetap terhubung ke jaringan target.

#### 4.6.2.2.2 Deauthentication Attack

Deauthentication Attack adalah teknik serangan terhadap jaringan Wi-Fi yang dilakukan dengan mengirimkan frame deauthentication palsu ke client atau Access Point untuk memutuskan koneksi secara paksa antara client dan AP, memanfaatkan kelemahan dalam frame manajemen 802.11 yang tidak terenkripsi dan tidak terautentikasi, sehingga ketika client terputus dan mencoba terhubung kembali secara otomatis, penyerang dapat menangkap proses 4-way handshake yang diperlukan untuk melakukan cracking password WPA/WPA2-PSK, atau digunakan untuk serangan Denial of Service (DoS) dengan terus memutuskan koneksi pengguna secara berulang-ulang.

#### 4.6.2.2.3 PMKID Attack

PMKID Attack adalah teknik serangan modern terhadap WPA/WPA2-PSK yang ditemukan pada tahun 2018, memanfaatkan kelemahan dalam Robust Security Network Information Element (RSN IE) yang terdapat pada frame pertama dari 4-way handshake atau pada frame EAPOL, di mana PMKID (Pairwise Master Key Identifier) yang merupakan hash dari PMK, MAC address AP, dan MAC address client dapat ditangkap tanpa perlu menunggu client terhubung atau melakukan deauthentication attack, sehingga penyerang hanya perlu mengirim association request ke Access Point untuk mendapatkan PMKID dan kemudian melakukan offline brute-force atau dictionary attack untuk memecahkan password, menjadikan serangan ini lebih cepat, lebih senyap, dan lebih efisien dibandingkan metode capture handshake tradisional.

#### 4.6.2.2.4 Dictionary Attack

Dictionary Attack adalah teknik serangan terhadap WPA/WPA2-PSK yang dilakukan secara offline setelah berhasil menangkap 4-way handshake atau PMKID, dengan cara mencoba memecahkan password menggunakan daftar kata atau frasa yang telah dikompilasi sebelumnya (wordlist) yang berisi password-password umum, kombinasi kata, atau password yang sering digunakan, di mana setiap entri dalam wordlist digunakan untuk menghasilkan PMK (Pairwise Master Key) dan dibandingkan dengan hash yang tertangkap hingga menemukan kecocokan, serangan ini sangat efektif terhadap password yang lemah, mudah ditebak, atau mengikuti pola umum, dan dapat dilakukan menggunakan tools seperti Aircrack-NG, Hashcat, atau John the Ripper.

#### 4.6.2.2.5 Brute Force Attack

Brute Force Attack adalah teknik serangan terhadap WPA/WPA2-PSK yang dilakukan secara offline setelah menangkap 4-way handshake atau PMKID, dengan cara mencoba semua kemungkinan kombinasi karakter secara sistematis hingga menemukan password yang benar, berbeda dengan dictionary attack yang menggunakan wordlist, brute force mencoba setiap kemungkinan kombinasi huruf (uppercase dan lowercase), angka, dan karakter khusus sesuai dengan panjang password yang ditargetkan, meskipun metode ini dapat memecahkan password apa pun termasuk yang sangat kompleks, namun membutuhkan waktu komputasi yang sangat lama terutama untuk password yang panjang dan rumit, sehingga efektivitasnya sangat bergantung pada kekuatan hardware (CPU/GPU) yang digunakan dan kompleksitas password target.

#### 4.6.2.2.6 Rainbow Table Attack

Rainbow Table Attack adalah teknik serangan terhadap WPA/WPA2-PSK yang menggunakan tabel pre-computed hash yang telah dikalkulasi sebelumnya untuk mempercepat proses cracking password, di mana rainbow table berisi jutaan hingga miliaran hash password yang sudah dipetakan dengan plaintext-nya sehingga penyerang dapat langsung mencari kecocokan hash dari handshake atau PMKID yang ditangkap tanpa perlu menghitung hash secara real-time, namun efektivitas serangan ini terbatas pada WPA/WPA2-PSK karena proses hashing menggunakan PBKDF2-SHA1 yang melibatkan SSID sebagai salt, sehingga rainbow table hanya dapat digunakan untuk SSID spesifik dan memerlukan storage yang sangat besar, membuat serangan ini kurang praktis dibandingkan dictionary atau brute force attack modern yang menggunakan GPU acceleration.

#### 4.6.2.2.7 Evil Twin Attack

Evil Twin Attack dalam konteks WPA/WPA2-PSK adalah teknik serangan yang dilakukan dengan membuat Access Point palsu yang memiliki SSID identik dengan jaringan target dan menggunakan sinyal lebih kuat untuk menarik client agar terhubung ke AP palsu tersebut, kemudian ketika pengguna memasukkan password WPA/WPA2 untuk terhubung, penyerang dapat menangkap kredensial tersebut secara langsung melalui captive portal palsu atau phishing page yang menyerupai halaman autentikasi asli, atau menggunakan tools seperti Wifiphisher dan Fluxion yang secara otomatis membuat fake authentication page untuk mencuri password, serangan ini sangat efektif karena memanfaatkan faktor manusia dan kepercayaan pengguna terhadap nama jaringan yang familiar, serta dapat dikombinasikan dengan deauthentication attack untuk memutus koneksi client dari AP asli dan memaksa mereka terhubung ke Evil Twin.

#### 4.6.2.2.8 KRACK Attack

KRACK Attack (Key Reinstallation Attack) adalah kelemahan kritis dalam protokol WPA2 yang ditemukan pada tahun 2017 oleh Mathy Vanhoef, memanfaatkan kelemahan fundamental dalam implementasi 4-way handshake dengan cara memanipulasi dan mengirim ulang message 3 dari handshake secara berulang untuk memaksa client menginstal ulang kunci enkripsi yang sama dan mereset nonce (number used once) menjadi nilai yang dapat diprediksi, sehingga penyerang dapat mendekripsi lalu lintas data yang terenkripsi WPA2, menyuntikkan paket malicious, melakukan Man-in-the-Middle attack, atau bahkan memanipulasi data yang dikirimkan antara client dan Access Point, serangan ini sangat berbahaya karena menyerang protokol itu sendiri bukan implementasinya, mempengaruhi hampir semua perangkat yang menggunakan WPA2, dan dapat dilakukan tanpa perlu mengetahui password jaringan, meskipun telah tersedia patch keamanan untuk mengatasi kerentanan ini.

### 4.6.2.3 WPA/WPA2-Enterprise (802.1X)

#### 4.6.2.3.1 EAP Handshake Capture

EAP Handshake Capture adalah teknik serangan terhadap WPA/WPA2-Enterprise yang dilakukan dengan menangkap proses pertukaran pesan EAP (Extensible Authentication Protocol) antara client, Access Point, dan RADIUS server saat pengguna melakukan autentikasi ke jaringan, di mana handshake ini berisi informasi autentikasi terenkripsi seperti hash kredensial pengguna atau challenge-response yang dapat ditangkap menggunakan tools seperti Airodump-ng atau Wireshark, kemudian penyerang dapat melakukan offline cracking terhadap kredensial yang tertangkap tergantung pada metode EAP yang digunakan, terutama pada implementasi yang lemah seperti EAP-MD5 atau PEAP dengan inner authentication yang vulnerable, meskipun serangan ini lebih kompleks dibandingkan serangan terhadap WPA2-PSK karena melibatkan protokol autentikasi yang lebih sophisticated dan seringkali memerlukan sertifikat atau tunnel encryption.

#### 4.6.2.3.2 MITM Attack

MITM Attack (Man-in-the-Middle Attack) terhadap WPA/WPA2-Enterprise adalah serangan yang memanfaatkan kelemahan dalam konfigurasi atau implementasi protokol EAP dengan cara menempatkan penyerang di antara client dan RADIUS server untuk menyadap atau memanipulasi komunikasi autentikasi, serangan ini sangat efektif ketika client tidak memvalidasi sertifikat server dengan benar atau administrator tidak mengkonfigurasi validasi sertifikat pada perangkat client, sehingga penyerang dapat membuat rogue Access Point atau fake RADIUS server yang menyerupai infrastruktur yang sah untuk menangkap kredensial pengguna seperti username dan password, terutama pada metode EAP yang rentan seperti PEAP atau EAP-TTLS tanpa validasi sertifikat server, serangan ini dapat dilakukan menggunakan tools seperti hostapd-wpe, FreeRADIUS-WPE, atau eaphammer untuk membuat fake authentication server yang dapat mencatat kredensial plaintext atau NT hash yang kemudian dapat di-crack secara offline atau digunakan untuk pass-the-hash attack.

#### 4.6.2.3.3 Evil Twin Attack

Evil Twin Attack terhadap WPA/WPA2-Enterprise adalah serangan yang dilakukan dengan membuat Access Point palsu yang meniru SSID jaringan enterprise yang sah dan dikonfigurasi dengan fake RADIUS server untuk menangkap kredensial autentikasi pengguna, ketika client mencoba terhubung ke Evil Twin AP, mereka akan diminta memasukkan username dan password mereka melalui proses autentikasi EAP yang tampak legitimate, dan karena banyak pengguna tidak memverifikasi sertifikat server atau mengabaikan peringatan sertifikat yang tidak valid, kredensial mereka akan dikirimkan ke fake RADIUS server milik penyerang dan dapat dicatat dalam plaintext atau hash format, serangan ini sangat efektif di lingkungan enterprise karena pengguna sering terbiasa memasukkan kredensial domain mereka untuk akses Wi-Fi dan dapat dikombinasikan dengan deauthentication attack untuk memutus client dari AP asli, menggunakan tools seperti eaphammer, hostapd-wpe, atau FreeRADIUS-WPE yang dapat mengekstrak MSCHAPv2 challenge-response untuk cracking offline atau langsung menangkap kredensial plaintext tergantung metode EAP yang digunakan.

#### 4.6.2.3.4 Downgrade Attack

Downgrade Attack terhadap WPA/WPA2-Enterprise adalah serangan yang memaksa client untuk menggunakan metode autentikasi EAP yang lebih lemah atau protokol keamanan yang lebih rendah dari yang seharusnya didukung, dengan cara memanipulasi proses negosiasi EAP antara client dan authentication server sehingga client beralih dari metode yang aman seperti EAP-TLS atau PEAP-MSCHAPv2 ke metode yang lebih vulnerable seperti EAP-MD5 atau bahkan menurunkan dari WPA2-Enterprise ke WPA2-PSK atau WEP, penyerang dapat menggunakan rogue Access Point yang dikonfigurasi untuk hanya mengiklankan metode autentikasi yang lemah atau memanipulasi EAP negotiation frames untuk memaksa client menggunakan protokol yang lebih mudah diserang, setelah berhasil melakukan downgrade, penyerang dapat dengan mudah menangkap dan memecahkan kredensial menggunakan teknik yang sesuai dengan protokol yang lebih lemah tersebut, serangan ini efektif terutama pada client yang dikonfigurasi untuk menerima multiple authentication methods tanpa enforcement policy yang ketat atau pada perangkat legacy yang masih mendukung protokol lama untuk backward compatibility.

#### 4.6.2.3.5 RADIUS Impersonation Attack

RADIUS Impersonation Attack adalah serangan terhadap WPA/WPA2-Enterprise yang dilakukan dengan membuat fake RADIUS server yang menyamar sebagai authentication server yang legitimate untuk menangkap kredensial pengguna atau memberikan akses tidak sah ke jaringan, penyerang membuat rogue Access Point yang terhubung ke fake RADIUS server dan mengiklankan SSID yang sama dengan jaringan enterprise target, ketika client mencoba melakukan autentikasi, fake RADIUS server akan merespons permintaan autentikasi dan dapat mencatat kredensial yang dikirimkan oleh client, menerima authentication request tanpa validasi yang proper, atau bahkan memberikan akses dengan mengklaim autentikasi berhasil meskipun kredensial salah, serangan ini sangat berbahaya karena dapat mengeksploitasi trust relationship antara Access Point dan RADIUS server, memanfaatkan kurangnya mutual authentication atau enkripsi yang lemah pada komunikasi RADIUS (terutama jika menggunakan shared secret yang weak atau protokol RADIUS tanpa RadSec/TLS), dan dapat digunakan untuk credential harvesting, unauthorized network access, atau sebagai stepping stone untuk serangan lebih lanjut ke dalam infrastruktur enterprise menggunakan tools seperti FreeRADIUS, hostapd, atau custom RADIUS server implementation.

#### 4.6.2.3.6 Dictionary Attack

Dictionary Attack terhadap WPA/WPA2-Enterprise adalah serangan offline yang dilakukan setelah berhasil menangkap kredensial hash atau challenge-response dari proses autentikasi EAP, dengan cara mencoba memecahkan password pengguna menggunakan daftar kata (wordlist) yang berisi password umum, kombinasi kata, atau pattern yang sering digunakan, serangan ini terutama efektif terhadap metode autentikasi berbasis password seperti PEAP-MSCHAPv2, EAP-TTLS-PAP, atau EAP-FAST di mana penyerang dapat menggunakan tools seperti Asleap untuk cracking EAP-LEAP hashes, Hashcat untuk MSCHAPv2 challenge-response, atau John the Ripper untuk various EAP hashes yang tertangkap dari rogue AP atau MITM attack, keberhasilan serangan ini sangat bergantung pada kekuatan password yang digunakan oleh pengguna dan kualitas wordlist yang dimiliki penyerang, sehingga mitigasi utamanya adalah implementasi kebijakan password yang kuat, penggunaan metode EAP berbasis sertifikat seperti EAP-TLS yang tidak rentan terhadap dictionary attack, serta penerapan account lockout policy dan monitoring pada RADIUS server untuk mendeteksi upaya cracking yang mencurigakan.

#### 4.6.2.3.7 Brute Force Attack

Brute Force Attack terhadap WPA/WPA2-Enterprise adalah serangan offline yang dilakukan setelah menangkap hash kredensial atau challenge-response dari proses autentikasi EAP, dengan cara mencoba semua kemungkinan kombinasi karakter secara sistematis hingga menemukan password yang benar, berbeda dengan dictionary attack yang menggunakan wordlist, brute force mencoba setiap kombinasi huruf (uppercase dan lowercase), angka, dan karakter khusus sesuai panjang password yang ditargetkan untuk memecahkan kredensial pengguna pada metode autentikasi seperti PEAP-MSCHAPv2, EAP-TTLS, atau EAP-MD5, meskipun metode ini teoritis dapat memecahkan password apa pun, namun membutuhkan waktu komputasi yang sangat lama terutama untuk password kompleks dan panjang, sehingga penyerang biasanya menggunakan GPU acceleration dengan tools seperti Hashcat atau oclHashcat untuk mempercepat proses, dan serangan ini dapat dimitigasi dengan menerapkan kebijakan password yang kuat dengan panjang minimal 12-16 karakter dan kompleksitas tinggi, menggunakan metode EAP berbasis sertifikat seperti EAP-TLS yang tidak bergantung pada password, serta implementasi rate limiting dan account lockout pada RADIUS server untuk mencegah online brute force attempts.

### 4.6.2.4 WPA3-Personal (SAE)

#### 4.6.2.4.1 Dragonblood Attack

Dragonblood Attack adalah kumpulan kerentanan terhadap implementasi SAE (Simultaneous Authentication of Equals) pada WPA3 yang ditemukan pada tahun 2019 oleh Mathy Vanhoef dan Eyal Ronen, mencakup berbagai vektor serangan seperti downgrade attack, side-channel attack, partition attack, dan denial-of-service attack, serangan ini muncul karena kelemahan implementasi Dragonfly yang memungkinkan penyerang melakukan offline dictionary attack, menganalisis informasi timing atau cache, serta mengeksploitasi handshake untuk memperoleh petunjuk password, menunjukkan bahwa meskipun protokol WPA3 aman secara matematis, implementasi yang kurang hati-hati dapat menimbulkan risiko signifikan.

#### 4.6.2.4.2 Downgrade Attack

Downgrade Attack terhadap WPA3-Personal adalah serangan yang memanfaatkan mode kompatibilitas atau transition WPA3-WPA2 untuk memaksa perangkat yang mendukung WPA3 menggunakan protokol WPA2 yang lebih lemah, penyerang dapat membuat rogue Access Point atau memanipulasi beacon dan probe responses sehingga client melakukan fallback ke WPA2, akibatnya serangan tradisional terhadap WPA2 seperti dictionary attack, PMKID capture, atau deauthentication attack menjadi memungkinkan, serangan ini efektif terutama pada jaringan yang diatur dalam mode mixed atau transition dengan perangkat legacy.

#### 4.6.2.4.3 Side-Channel Attack

Side-Channel Attack terhadap WPA3-Personal adalah serangan yang mengeksploitasi kebocoran informasi dari implementasi fisik atau temporal algoritma SAE, bukan menyerang protokol itu sendiri, penyerang dapat memanfaatkan perbedaan waktu pemrosesan, pola akses cache, konsumsi daya, atau emanasi elektromagnetik untuk mengekstrak bit-bit password atau mempersempit ruang pencarian, serangan ini menunjukkan bahwa meskipun kriptografi matematis aman, kelemahan implementasi pada perangkat dapat dieksploitasi untuk mendapatkan informasi sensitif secara bertahap.

#### 4.6.2.4.4 Evil Twin Via Downgrade

Evil Twin Via Downgrade terhadap WPA3-Personal adalah kombinasi serangan yang menggabungkan teknik Evil Twin Attack dengan Downgrade Attack untuk memaksa perangkat yang mendukung WPA3 terhubung ke Access Point palsu yang hanya mendukung WPA2, penyerang membuat rogue AP dengan SSID identik dengan jaringan target tetapi mengiklankan hanya dukungan WPA2 atau WPA2-PSK, kemudian menggunakan deauthentication attack untuk memutus koneksi client dari AP asli yang menggunakan WPA3, sehingga ketika client mencoba reconnect dan melakukan fallback ke WPA2 transition mode, mereka akan terhubung ke Evil Twin AP yang vulnerable, memungkinkan penyerang untuk menangkap 4-way handshake atau PMKID untuk offline cracking, melakukan Man-in-the-Middle attack, atau menggunakan fake captive portal untuk credential harvesting, serangan ini sangat efektif pada jaringan yang dikonfigurasi dalam WPA3-WPA2 mixed mode dan client yang tidak dikonfigurasi untuk strictly enforce WPA3-only connections, mitigasi dapat dilakukan dengan menggunakan WPA3-only mode tanpa backward compatibility, mengaktifkan Protected Management Frames (PMF) yang mandatory di WPA3 untuk mencegah deauthentication attacks, mengkonfigurasi client devices untuk reject WPA2 connections pada SSID yang seharusnya WPA3, dan melakukan network monitoring untuk mendeteksi rogue AP atau downgrade attempts yang mencurigakan.

#### 4.6.2.4.5 Denial-of-Service (DoS)

Denial-of-Service (DoS) Attack terhadap WPA3-Personal adalah serangan yang memanfaatkan kelemahan dalam proses SAE (Simultaneous Authentication of Equals) handshake dengan cara membanjiri Access Point atau client dengan frame SAE palsu atau malformed yang memaksa perangkat target melakukan komputasi kriptografi yang intensif secara berulang-ulang, menghabiskan sumber daya CPU dan memory sehingga mengganggu atau mencegah proses autentikasi yang legitimate, penyerang dapat mengirimkan SAE commit frames atau SAE confirm frames dalam jumlah besar dengan parameter yang invalid atau manipulated, memaksa AP untuk memproses setiap request dan melakukan operasi elliptic curve cryptography yang mahal secara komputasi, atau menargetkan client dengan flooding SAE frames untuk menguras battery dan processing power perangkat mobile, serangan ini dapat menyebabkan jaringan menjadi tidak dapat diakses oleh pengguna yang sah, degradasi performa yang signifikan, atau bahkan crash pada perangkat dengan resource yang terbatas, dan merupakan salah satu kerentanan yang diidentifikasi dalam Dragonblood Attack suite, mitigasi terhadap DoS attack ini memerlukan implementasi rate limiting pada SAE handshake requests, anti-flooding mechanisms pada Access Point, resource management yang lebih baik untuk menangani burst traffic, firmware updates dari vendor yang memperbaiki handling terhadap malformed frames, serta network-level protection seperti wireless intrusion prevention system (WIPS) yang dapat mendeteksi dan memblokir pola traffic DoS yang mencurigakan.

### 4.6.2.5 WPS

#### 4.6.2.5.1 PIN Brute Force Attack

PIN Brute Force Attack adalah serangan yang menargetkan mekanisme WPS pada router dengan mencoba menebak PIN delapan digit secara berulang, desain verifikasi WPS memecah PIN menjadi dua bagian sehingga validasi memberi tahu apakah separuh PIN benar sehingga ruang pencarian turun drastis dari ratusan juta kemungkinan menjadi urutan puluhan ribu percobaan, penyerang yang berada dalam jangkauan radio dapat mengirim permintaan autentikasi berulang secara online untuk menebak setiap bagian PIN sampai berhasil, setelah berhasil penyerang dapat memperoleh autentikasi WPS dan menyingkap PSK atau passphrase jaringan, serangan ini efektif karena kelemahan desain protokol dan karena WPS sering diaktifkan secara default pada banyak perangkat sehingga eksposurnya luas.

#### 4.6.2.5.2 Pixie Dust Attack

Pixie Dust Attack adalah serangan terhadap mekanisme WPS yang memanfaatkan kelemahan pada generator bilangan acak atau entropy dalam implementasi WPS pada beberapa router dan perangkat, bukannya melakukan brute force online terhadap seluruh ruang PIN, penyerang menangkap pertukaran awal yang berhubungan dengan proses PIN dan menggunakan informasi lemah seperti nonce atau nilai acak yang dihasilkan buruk untuk menghitung atau menebak PIN secara offline dalam waktu singkat, akibatnya penyerang dapat memperoleh PIN WPS dan kemudian mengungkap passphrase jaringan tanpa perlu melakukan ribuan percobaan autentikasi online, serangan ini efektif terutama pada perangkat embedded dengan implementasi randomisasi yang lemah sehingga memungkinkan pemulihan kunci jauh lebih cepat daripada brute force tradisional.

#### 4.6.2.5.3 Physical Access Attack (Push Button Configuration)

Physical Access Attack atau Push Button Configuration adalah serangan yang memanfaatkan mekanisme WPS yang dirancang untuk memudahkan pemasangan perangkat dengan cara menekan tombol fisik pada router atau access point, ketika tombol ditekan perangkat memasuki mode pairing untuk jangka waktu singkat dan perangkat registrar dapat langsung bergabung ke jaringan tanpa perlu memasukkan passphrase, akibatnya siapa pun yang memiliki akses fisik atau mampu menekan tombol dalam jendela waktu tersebut dapat memperoleh akses ke jaringan secara langsung, serangan ini berbahaya karena melewati autentikasi kata sandi dan memberikan akses ke sumber daya jaringan hanya dengan aksi fisik sederhana, selain itu ancaman serupa dapat muncul jika tombol virtual atau manajemen jarak jauh yang setara dapat diprovokasi oleh pihak ketiga, efeknya termasuk kompromi kerahasiaan dan integritas jaringan serta potensi penyalahgunaan layanan internal.

#### 4.6.2.5.4 Null PIN Attack

Null PIN Attack adalah serangan yang mengeksploitasi implementasi WPS yang lemah di mana perangkat secara keliru menerima nilai PIN yang bernilai nol atau kosong sebagai PIN yang valid, alih‑alih melakukan validasi penuh terhadap delapan digit PIN, penyerang yang berada dalam jangkauan radio dapat mengirimkan permintaan WPS dengan nilai PIN null atau berisi digit nol untuk melewati proses autentikasi, akibatnya perangkat dapat memberikan akses jaringan tanpa perlu mengetahui PIN asli, serangan ini muncul karena kurangnya pemeriksaan input dan penanganan kondisi tepi pada firmware atau implementasi WPS tertentu sehingga mekanisme provisioning menjadi dapat dipaksa untuk membocorkan kredensial jaringan.

#### 4.6.2.5.5 Known PIN Attack

Known PIN Attack adalah serangan yang memanfaatkan PIN WPS yang sudah diketahui atau dapat diprediksi, misalnya PIN default pabrikan yang tercetak pada label perangkat, PIN yang dihasilkan oleh algoritma pabrikan sehingga polanya bisa ditebak, atau kumpulan PIN umum yang sering digunakan, penyerang mencoba PIN yang sudah dikenal atau diprediksi ini untuk mengautentikasi melalui WPS dan memperoleh akses ke jaringan, serangan ini efektif karena banyak perangkat memakai PIN yang lemah atau deterministik sehingga ruang pencarian mengecil drastis jika dibandingkan dengan menebak PIN acak.

### 4.6.2.6 Serangan Lainnya

#### 4.6.2.6.1 Beacon Flooding Attack

Beacon Flooding Attack adalah serangan Denial-of-Service (DoS) yang dilakukan dengan membanjiri spektrum Wi-Fi dengan ratusan hingga ribuan beacon frames palsu yang mengiklankan SSID-SSID fiktif dalam jumlah besar, bertujuan untuk mengganggu operasi normal jaringan wireless, menghabiskan bandwidth pada channel yang digunakan, membuat daftar jaringan yang tersedia pada perangkat client menjadi kacau dan sulit menemukan SSID yang legitimate, serta menguras resource processing pada client devices dan Access Point yang harus memproses semua beacon frames tersebut, penyerang menggunakan tools seperti MDK3, MDK4, atau airbase-ng untuk membuat multiple fake Access Points atau mengirimkan beacon frames dalam rate yang sangat tinggi pada satu atau multiple channels, serangan ini dapat digunakan untuk menyembunyikan keberadaan rogue AP atau Evil Twin di antara ratusan SSID palsu, mengganggu site surveys dan wireless security assessments, atau sebagai bagian dari serangan social engineering dengan membuat SSID yang menyesatkan atau meniru nama jaringan yang sah, dampaknya meliputi degradasi performa jaringan wireless, kesulitan pengguna dalam mengidentifikasi dan terhubung ke jaringan yang benar, interference pada spectrum 2.4GHz atau 5GHz yang mempengaruhi semua perangkat dalam area tersebut, dan mitigasi terhadap serangan ini memerlukan implementasi Wireless Intrusion Prevention System (WIPS) yang dapat mendeteksi dan memblokir beacon flooding patterns, penggunaan spectrum analyzer untuk mengidentifikasi sumber interference, implementasi 802.11w Protected Management Frames untuk mencegah beacon frame spoofing pada client yang mendukung, serta physical location tracking untuk menemukan dan mematikan perangkat penyerang yang melakukan beacon flooding.

#### 4.6.2.6.2 Authentication DoS Attack

Authentication DoS Attack adalah serangan Denial-of-Service yang menargetkan proses autentikasi wireless dengan cara membanjiri Access Point dengan authentication requests atau association requests dalam jumlah besar menggunakan MAC address palsu atau spoofed, bertujuan untuk menghabiskan resource processing dan memory pada Access Point sehingga tidak dapat melayani permintaan autentikasi dari client yang legitimate, menyebabkan pengguna yang sah tidak dapat terhubung ke jaringan atau mengalami koneksi yang sangat lambat, penyerang mengirimkan ribuan authentication frames atau association frames per detik menggunakan tools seperti MDK3, MDK4, aireplay-ng, atau custom scripts yang menggunakan Scapy untuk crafting packets dengan randomized atau sequential MAC addresses, memaksa Access Point untuk memproses setiap request, membuat entry dalam association table, dan melakukan cryptographic operations yang menguras CPU dan memory resources, serangan ini sangat efektif terutama pada Access Point dengan kapasitas processing terbatas atau yang tidak memiliki proteksi rate limiting yang memadai, dan dapat dikombinasikan dengan deauthentication attack untuk menciptakan disruption yang lebih parah dimana client yang sudah terhubung di-disconnect sementara client baru tidak dapat melakukan autentikasi, dampaknya meliputi network unavailability, service disruption untuk legitimate users, performance degradation bahkan setelah serangan berhenti karena residual state pada AP, dan mitigasi yang dapat dilakukan adalah implementasi rate limiting pada authentication requests dari single MAC address atau per-client basis, penggunaan access control lists (ACL) dan MAC filtering meskipun dapat di-bypass dengan spoofing, deployment Wireless Intrusion Prevention System (WIPS) yang dapat mendeteksi abnormal authentication patterns dan memblokir source addresses yang suspicious, implementasi 802.11w Protected Management Frames untuk mencegah spoofed authentication frames, mengkonfigurasi maximum client association limits, serta melakukan capacity planning yang tepat untuk memastikan Access Point memiliki resource yang cukup untuk menangani burst traffic dan potential DoS attempts.

#### 4.6.2.6.3 SSID Probing and Bruteforcing Attack

SSID Probing and Bruteforcing Attack adalah serangan yang dilakukan untuk menemukan hidden SSID atau mengidentifikasi jaringan wireless yang tidak mengiklankan nama mereka secara broadcast dengan cara mengirimkan probe request frames yang berisi kemungkinan SSID secara sistematis hingga mendapatkan probe response dari Access Point target, penyerang menggunakan wordlist yang berisi nama SSID yang umum digunakan seperti "admin", "test", "corporate", atau menggunakan pattern-based generation untuk mencoba berbagai kombinasi nama, kemudian mengirimkan directed probe requests menggunakan tools seperti MDK3, MDK4, airodump-ng dengan probing mode, atau mdk4 dengan mode probe flooding untuk setiap entry dalam wordlist, ketika probe request mengandung SSID yang benar, Access Point dengan hidden SSID akan merespons dengan probe response yang mengungkapkan keberadaan jaringan tersebut beserta informasi seperti supported rates, encryption type, dan capabilities, serangan ini juga dapat digunakan untuk information gathering tentang jaringan yang ada di area tertentu, mengidentifikasi multiple APs dengan SSID yang sama, atau sebagai reconnaissance phase untuk serangan lebih lanjut, teknik ini efektif karena banyak organisasi salah menganggap bahwa menyembunyikan SSID broadcast memberikan keamanan tambahan padahal hanya memberikan security through obscurity yang mudah di-bypass, dan mitigasi terhadap serangan ini meliputi tidak mengandalkan hidden SSID sebagai security measure utama tetapi menggunakan enkripsi kuat seperti WPA3 dan autentikasi yang robust, implementasi rate limiting pada probe responses untuk memperlambat bruteforce attempts, penggunaan Wireless Intrusion Detection System (WIDS) untuk mendeteksi excessive probe request patterns yang mencurigakan, implementasi MAC filtering sebagai layer tambahan meskipun dapat di-bypass dengan spoofing, serta monitoring dan logging probe request activity untuk mengidentifikasi potential reconnaissance attempts terhadap infrastruktur wireless.

#### 4.6.2.6.4 Disassociation Attack

Disassociation Attack adalah serangan yang mirip dengan Deauthentication Attack namun menggunakan disassociation frames untuk memutuskan koneksi antara client dan Access Point pada layer yang berbeda dalam proses koneksi wireless, dengan mengirimkan spoofed disassociation frames yang tampak berasal dari AP ke client atau sebaliknya untuk memaksa perangkat mengakhiri association tanpa melakukan deauthentication secara eksplisit, memanfaatkan kelemahan yang sama dalam management frames 802.11 yang tidak terenkripsi dan tidak terauthentikasi pada jaringan tanpa Protected Management Frames, penyerang menggunakan tools seperti aireplay-ng, MDK3, MDK4, atau mdk4 dengan mode disassociation untuk mengirimkan frame palsu yang dapat ditargetkan secara spesifik ke client tertentu atau broadcast ke semua client dalam jaringan, perbedaan utama dengan deauthentication adalah disassociation hanya memutus association layer sementara authentication state mungkin masih tetap ada, sehingga reconnection dapat terjadi lebih cepat karena client tidak perlu melakukan full authentication process kembali, namun efek dan tujuan serangan ini tetap sama yaitu untuk Denial-of-Service, memaksa client melakukan reassociation untuk menangkap handshake, atau sebagai bagian dari serangan yang lebih kompleks seperti Evil Twin atau Man-in-the-Middle, serangan ini juga dapat digunakan untuk testing network resilience, roaming behavior, atau load balancing mechanisms pada wireless infrastructure, dampaknya meliputi temporary connection interruption, degraded user experience dengan frequent disconnections, vulnerability window selama reassociation process yang dapat dieksploitasi untuk credential theft atau traffic interception, dan mitigasi yang dapat diterapkan adalah sama dengan deauthentication attack yaitu implementasi 802.11w Management Frame Protection (MFP) yang mengenkripsi dan memproteksi management frames termasuk disassociation frames, deployment WIPS untuk mendeteksi abnormal disassociation patterns atau frame flooding, menggunakan WPA3 yang mandatory mengimplementasikan PMF, monitoring dan alerting untuk excessive disassociation events, serta ensuring firmware updates pada Access Points dan client devices untuk mendukung fitur keamanan terbaru yang dapat mencegah spoofed management frames.

#### 4.6.2.6.5 Michael Countermeasures Exploitation Attack

Michael Countermeasures Exploitation Attack adalah serangan Denial-of-Service yang mengeksploitasi mekanisme keamanan Michael Message Integrity Check (MIC) pada protokol TKIP (Temporal Key Integrity Protocol) yang digunakan dalam WPA, dengan cara sengaja memicu countermeasures yang dirancang untuk mendeteksi dan merespons serangan terhadap integrity check dengan menonaktifkan jaringan selama periode waktu tertentu (biasanya 60 detik), penyerang mengirimkan paket data yang telah dimodifikasi atau corrupted dengan MIC value yang invalid ke Access Point atau client, sehingga ketika AP mendeteksi dua atau lebih MIC failures dalam window waktu 60 detik, mekanisme Michael countermeasures akan aktif dan secara otomatis memutuskan semua client dan menonaktifkan jaringan untuk mencegah potential attack, memaksa administrator untuk manually restart atau menunggu timeout period sebelum jaringan dapat beroperasi kembali, serangan ini dapat dilakukan menggunakan tools seperti MDK3, mdk4, atau custom packet injection dengan aireplay-ng untuk mengirim spoofed frames dengan invalid MIC secara berulang, sangat efektif untuk creating sustained denial-of-service karena penyerang dapat terus memicu countermeasures setiap kali jaringan kembali online, serangan ini memanfaatkan security mechanism yang seharusnya melindungi jaringan justru menjadi weakness yang dapat dieksploitasi untuk disruption, terutama efektif pada jaringan yang masih menggunakan TKIP atau WPA dengan legacy compatibility, dampaknya meliputi extended network downtime, disruption terhadap business operations atau critical communications, user frustration dan potential productivity loss, serta administrative overhead untuk troubleshooting dan recovery, dan mitigasi yang dapat dilakukan adalah migrasi dari TKIP ke AES-CCMP yang tidak menggunakan Michael MIC mechanism, upgrade ke WPA2 atau WPA3 yang tidak vulnerable terhadap serangan ini, menonaktifkan TKIP support dan enforce AES-only encryption pada Access Point configuration, implementation WIPS untuk mendeteksi MIC failure patterns yang mencurigakan, monitoring dan alerting pada Michael countermeasures activations untuk rapid response, serta ensuring proper network segmentation sehingga serangan pada satu segment tidak mempengaruhi entire infrastructure.

#### 4.6.2.6.6 EAPOL Start and Logoff Packet Injection Attack

EAPOL Start and Logoff Packet Injection Attack adalah serangan yang memanfaatkan protokol EAPOL (Extensible Authentication Protocol over LAN) dengan cara menyuntikkan EAPOL-Start frames atau EAPOL-Logoff frames palsu untuk mengganggu proses autentikasi atau memutuskan koneksi client pada jaringan yang menggunakan WPA/WPA2-Enterprise dengan 802.1X authentication, penyerang mengirimkan spoofed EAPOL-Start frames dengan MAC address client yang di-spoof untuk memaksa Access Point atau RADIUS server memulai ulang proses autentikasi yang sedang berlangsung, menyebabkan interruption pada established connections atau creating excessive authentication requests yang membebani infrastructure, atau mengirimkan EAPOL-Logoff frames yang tampak berasal dari client legitimate untuk memberitahu Access Point bahwa client ingin mengakhiri sesi dan disconnect dari jaringan, memaksa client melakukan re-authentication dan creating window of opportunity untuk serangan Man-in-the-Middle atau Evil Twin, serangan ini dilakukan menggunakan tools seperti aireplay-ng, Scapy untuk crafting custom EAPOL packets, atau mdk4 untuk automated injection, sangat efektif pada jaringan enterprise yang heavily rely pada 802.1X authentication karena dapat menyebabkan mass disconnection atau authentication storms yang overwhelm RADIUS servers, serangan ini juga dapat digunakan untuk reconnaissance dengan memaksa clients mengirimkan EAP identity responses yang dapat di-capture untuk username enumeration, atau dikombinasikan dengan fake RADIUS server untuk credential harvesting ketika client melakukan re-authentication, dampaknya meliputi service disruption untuk authenticated users, degraded network performance karena repeated authentication attempts, exposure kredensial selama re-authentication process jika dikombinasikan dengan MITM attacks, RADIUS server overload yang dapat affect multiple network segments, dan mitigasi yang efektif adalah implementasi 802.11w Protected Management Frames yang juga memberikan proteksi terhadap certain EAPOL frame types, deployment WIPS untuk mendeteksi abnormal EAPOL frame patterns atau injection attempts, rate limiting pada EAPOL frames processing di Access Point dan RADIUS server untuk prevent flooding, implementing strict MAC address filtering atau 802.1X with device certificates untuk prevent spoofing, monitoring EAPOL frame statistics untuk mendeteksi anomalies seperti excessive logoff atau start frames, ensuring proper VLAN segmentation dan network access control untuk limit impact of successful attacks, serta regular security audits dan penetration testing untuk identify vulnerabilities dalam 802.1X implementation sebelum dapat dieksploitasi oleh attackers.

#### 4.6.2.6.7 Mesh Network Attacks (IEEE 802.11s)
4.6.2.6.7 Mesh Network Attacks (IEEE 802.11s)

Mesh Network Attacks terhadap IEEE 802.11s adalah serangkaian serangan yang menargetkan kelemahan dalam protokol wireless mesh networking dimana multiple Access Points atau nodes saling terhubung membentuk jaringan mesh untuk memperluas coverage dan redundancy, dengan mengeksploitasi vulnerabilities dalam mesh peering management, routing protocols seperti HWMP (Hybrid Wireless Mesh Protocol), authentication mechanisms, atau topology discovery processes, penyerang dapat melakukan berbagai jenis serangan seperti rogue mesh node injection dengan memasukkan node palsu ke dalam mesh topology untuk intercept atau manipulate traffic, mesh peering attack dengan membuat fake peering relationships untuk menjadi part of mesh network tanpa proper authorization, routing table poisoning dengan mengirimkan spoofed routing advertisements untuk redirect traffic melalui malicious nodes, path selection manipulation untuk memaksa traffic melewati node yang dikontrol penyerang untuk Man-in-the-Middle attacks, atau Denial-of-Service dengan membanjiri mesh control frames seperti Peer Link Open, Peer Link Confirm, atau PREQ/PREP messages untuk disrupt mesh formation atau routing convergence, serangan ini juga dapat memanfaatkan kelemahan dalam Simultaneous Authentication of Equals (SAE) yang digunakan untuk mesh peering authentication, atau mengeksploitasi lack of proper encryption pada mesh forwarding frames pada implementasi yang tidak secure, penyerang menggunakan tools seperti modified hostapd untuk creating rogue mesh nodes, Scapy untuk crafting mesh-specific frames, atau custom software untuk participating dalam mesh protocols dengan malicious intent, dampak dari serangan ini sangat serius karena mesh networks sering digunakan untuk critical infrastructure, smart city deployments, atau enterprise campus networks dimana compromise terhadap mesh topology dapat affect availability, integrity, dan confidentiality dari entire network, termasuk traffic interception, data manipulation, network partitioning yang isolate certain areas, performance degradation through suboptimal routing, atau complete network unavailability, dan mitigasi yang dapat diterapkan meliputi implementasi strong authentication untuk mesh peering menggunakan SAE atau certificate-based authentication, encryption of all mesh traffic termasuk forwarding frames menggunakan authenticated encryption modes, implementation of secure routing protocols dengan cryptographic protection untuk routing messages, deployment intrusion detection systems yang specifically monitor mesh control traffic untuk detect anomalies, regular topology verification dan validation untuk detect rogue nodes atau unauthorized peering relationships, network access control dan authorization policies untuk restrict which nodes dapat join mesh, monitoring dan logging semua mesh events untuk forensics dan incident response, firmware updates untuk patch known vulnerabilities dalam 802.11s implementations, serta physical security measures untuk prevent unauthorized deployment of mesh nodes dalam coverage area.

#### 4.6.2.6.8 WIDS/WIPS Confusion Attack

WIDS/WIPS Confusion Attack adalah serangan yang dirancang khusus untuk mengelabui atau melumpuhkan Wireless Intrusion Detection System (WIDS) atau Wireless Intrusion Prevention System (WIPS) dengan cara membanjiri sistem monitoring dengan false positives, anomalous traffic patterns, atau spoofed frames dalam jumlah besar sehingga mengaburkan serangan sebenarnya atau menyebabkan alert fatigue pada security administrators, penyerang dapat mengirimkan kombinasi berbagai attack signatures secara simultan seperti beacon flooding, deauthentication floods, fake association requests, spoofed probe requests dengan randomized MAC addresses, atau crafted malformed frames yang memicu detection rules tetapi tidak menyebabkan dampak nyata, dengan tujuan untuk overwhelm WIDS/WIPS sensors dan analysis engines, menghabiskan computational resources untuk processing false alerts, atau memaksa administrator menonaktifkan certain detection rules karena excessive false positives, sehingga ketika serangan yang sebenarnya dilakukan seperti Evil Twin atau Rogue AP deployment, serangan tersebut tidak terdeteksi atau tenggelam dalam noise dari ribuan alerts yang dihasilkan, teknik lain yang digunakan adalah MAC address rotation dengan sangat cepat untuk evade blacklisting mechanisms, mimicking legitimate traffic patterns untuk bypass behavioral analysis, atau exploiting weaknesses dalam WIDS/WIPS signature databases dengan menggunakan attack variants yang tidak ter-cover dalam detection rules, serangan ini juga dapat mencakup physical layer attacks seperti jamming pada specific frequencies yang digunakan oleh WIDS sensors untuk communication dengan management console, atau targeting sensor devices langsung dengan DoS attacks untuk membuat mereka offline, penyerang menggunakan tools seperti MDK3, MDK4, Airgeddon, atau custom scripts dengan Scapy dan multiple wireless adapters untuk generating high-volume attack traffic dari berbagai locations secara simultaneous, dampak dari serangan ini sangat berbahaya karena menciptakan blind spots dalam security monitoring, allowing real attacks untuk proceed undetected, menyebabkan wasted resources dalam investigating false positives, degrading trust dalam security systems yang dapat lead ke ignored genuine alerts, atau forcing organizations untuk operate dalam degraded security posture dengan disabled protection mechanisms, dan mitigasi yang efektif memerlukan multi-layered approach termasuk implementation intelligent filtering dan correlation engines yang dapat distinguish between genuine threats dan noise, rate limiting pada alert generation dengan prioritization berdasarkan severity dan confidence levels, distributed sensor deployment dengan redundant monitoring untuk cross-validation of alerts, behavioral baselining untuk detect anomalous deviations yang significant, implementation of machine learning algorithms untuk adaptive threat detection yang dapat recognize novel attack patterns, regular tuning dan optimization of detection rules berdasarkan environment specifics, segregation of WIDS/WIPS management network dari production wireless untuk prevent targeting, physical security untuk sensors dan management infrastructure, comprehensive logging dan forensics capabilities untuk post-incident analysis, integration dengan SIEM systems untuk broader context dan correlation dengan other security events, serta regular training untuk security staff dalam recognizing confusion attacks dan maintaining vigilance despite false positive challenges.

#### 4.6.2.6.9 Packet Fuzzer Attack

Packet Fuzzer Attack adalah serangan yang mengirimkan paket-paket wireless dengan struktur yang malformed, mutated, atau tidak valid secara sengaja ke Access Point atau client devices untuk mengidentifikasi kelemahan dalam implementasi protokol 802.11, memicu crashes, buffer overflows, memory corruption, atau unexpected behavior yang dapat dieksploitasi untuk Denial-of-Service atau bahkan remote code execution, dengan cara memodifikasi field-field dalam wireless frames seperti management frames, control frames, atau data frames menggunakan nilai random, boundary values, oversized payloads, atau kombinasi type/subtype yang invalid, penyerang menggunakan tools seperti Scapy untuk crafting malformed packets, MDK3/MDK4 dengan fuzzing mode, TAOF (The Art of Fuzzing), atau custom fuzzer scripts yang secara sistematis memutasi berbagai fields untuk menemukan vulnerabilities dalam parsing dan processing logic dari wireless drivers atau firmware, serangan ini dapat menargetkan berbagai komponen seperti beacon frames dengan SSID oversized, information elements yang malformed, probe responses dengan invalid supported rates, authentication frames dengan algorithm fields yang corrupted, association frames dengan capability information yang tidak valid, EAPOL frames dengan key data yang malformed, atau action frames dengan categories yang tidak dikenali, dampak dari serangan ini meliputi device crashes atau reboots yang menyebabkan service disruption, memory corruption yang potentially exploitable, discovery of zero-day vulnerabilities dalam firmware implementations, resource exhaustion melalui error handling overhead, atau exposure informasi sensitif melalui memory leaks, dan mitigasi yang dapat dilakukan adalah implementation robust input validation pada semua frame processing paths, regular firmware dan driver updates untuk patch known vulnerabilities, fuzzing testing oleh vendors sebagai bagian dari quality assurance process, deployment WIPS untuk mendeteksi dan memblokir fuzzing patterns, frame filtering pada network infrastructure untuk drop malformed frames, serta monitoring untuk mendeteksi abnormal frame patterns yang mengindikasikan fuzzing attempts.
