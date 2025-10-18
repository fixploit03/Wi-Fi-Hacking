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

PMKID (Pairwise Master Key Identifier) adalah nilai hash kriptografis yang dihasilkan dari Pairwise Master Key (PMK) dan digunakan sebagai identitas unik untuk memfasilitasi proses autentikasi cepat dalam jaringan Wi-Fi yang menggunakan WPA/WPA2. PMKID dihitung menggunakan algoritma HMAC-SHA1 dengan rumus: PMKID = HMAC-SHA1(PMK, "PMK Name" | MAC_AP | MAC_STA), dimana "PMK Name" adalah string konstan, MAC_AP adalah alamat MAC access point, dan MAC_STA adalah alamat MAC station (klien).
  
### 4.5.1 Kelebihan PMKID

- Mempercepat roaming (handoff) antar AP.
- Mengurangi overhead handshake penuh jika STA sudah pernah terhubung sebelumnya.

### 4.5.2 Kelemahan PMKID

Jika dicapture, PMKID dapat digunakan untuk melakukan serangan offline terhadap PSK, sehingga tetap perlu keamanan PSK yang kuat.

# 4.6 Jenis-Jenis Serangan pada Jaringan Wi-Fi

Berikut adalah jenis-jenis serangan pada jaringan Wi-Fi:

## 4.6.1 Serangan Fundamental

### 4.6.1.1 Packet Sniffing (Passive Monitoring)

Packet Sniffing adalah serangan pasif di mana penyerang memantau lalu lintas jaringan Wi-Fi untuk menangkap dan menganalisis paket data yang dikirimkan tanpa mengganggu komunikasi. Ini memungkinkan penyerang mendapatkan informasi sensitif seperti kredensial atau data tidak terenkripsi.

### 4.6.1.2 MAC Spoofing Attack

MAC Spoofing Attack adalah serangan di mana penyerang memalsukan alamat MAC (Media Access Control) perangkat mereka untuk menyamar sebagai perangkat sah yang diizinkan di jaringan, sehingga mendapatkan akses tidak sah atau melewati filter MAC.

### 4.6.1.3 Rogue Access Point Attack

Rogue Access Point Attack melibatkan pemasangan titik akses (AP) tidak sah yang terhubung ke jaringan resmi, memungkinkan penyerang untuk mengintersepsi lalu lintas atau meluncurkan serangan lebih lanjut seperti man-in-the-middle.

### 4.6.1.4 Evil Twin Attack

## 4.6.2 Serangan Pada Protokol Keamanan

### 4.6.2.1 WEP (Wired Equivalent Privacy)
#### 4.6.2.1.1 FMS Attack

FMS Attack adalah serangan kriptanalisis yang memanfaatkan kelemahan dalam inisialisasi vektor (IV) pada algoritma enkripsi RC4 yang digunakan oleh WEP untuk memulihkan kunci enkripsi. Serangan ini bekerja dengan mengumpulkan IV yang lemah (weak IVs) dari paket yang ditransmisikan melalui jaringan wireless, dimana IV tertentu memiliki korelasi statistik dengan byte pertama dari key stream RC4, kemudian penyerang menganalisis ribuan hingga jutaan paket yang tertangkap untuk mengidentifikasi pola statistik yang konsisten dan secara bertahap merekonstruksi byte per byte dari WEP key. Yang membuat serangan ini efektif adalah sifat deterministik dari weak IVs yang memungkinkan penyerang untuk mengurangi entropy kunci secara signifikan, meskipun membutuhkan volume traffic yang besar dan waktu pengumpulan paket yang cukup lama untuk mencapai akurasi yang tinggi dalam pemulihan kunci lengkap.

#### 4.6.2.1.2 KoreK Attack

KoreK Attack adalah pengembangan dari FMS Attack yang meningkatkan efisiensi dan kecepatan pemecahan kunci WEP melalui teknik statistik yang lebih canggih. Serangan ini bekerja dengan memanfaatkan multiple weakness classes dalam implementasi RC4 yang meliputi tidak hanya weak IVs tetapi juga IVs dengan karakteristik khusus yang memberikan informasi tentang berbagai bagian kunci, kemudian menggunakan algoritma probabilistik untuk menganalisis korelasi antara IV yang tertangkap dan key stream yang dihasilkan. Keunggulan serangan ini terletak pada kemampuannya untuk memerlukan lebih sedikit paket yang ditangkap (biasanya antara 50.000 hingga 500.000 paket) dibandingkan dengan FMS Attack orisinal, serta penggunaan teknik matematis yang lebih efisien dalam memproses data yang tersedia untuk mempercepat proses pemulihan kunci WEP.

#### 4.6.2.1.3 PTW Attack

PTW Attack adalah serangan generasi ketiga terhadap WEP yang dikembangkan oleh Tews, Weinmann, dan Pyshkin yang merevolusi efisiensi cracking WEP dengan pendekatan yang benar-benar baru. Serangan ini bekerja dengan memanfaatkan hubungan probabilistik antara key stream bytes dan IV tanpa bergantung pada traditional weak IVs, menggunakan hanya jenis paket ARP yang dapat diinisiasi melalui ARP injection, kemudian menganalisis statistical bias dalam algoritma RC4 untuk secara cepat merekonstruksi kunci WEP. Yang membuat serangan ini sangat revolusioner adalah kemampuannya untuk memecahkan kunci WEP 104-bit dengan hanya 20.000 hingga 40.000 paket yang tertangkap dan dalam waktu kurang dari 60 detik pada hardware modern, menjadikannya metode paling efisien dan praktis untuk menembus keamanan WEP dibandingkan dengan pendahulunya.

#### 4.6.2.1.4 Fragmentation Attack

Fragmentation Attack adalah teknik yang memanfaatkan fitur fragmentasi pada protokol 802.11 untuk mendapatkan portion of key stream yang dapat digunakan untuk menginjeksikan paket arbitrary ke dalam jaringan. Serangan ini bekerja dengan mengirimkan packet pendek ke access point yang memicu respons fragmentasi, dimana setiap fragment dienkripsi menggunakan key stream yang sama, kemudian penyerang dapat menganalisis pola enkripsi dari multiple fragments tersebut untuk mengekstrak bagian dari key stream RC4. Keuntungan serangan ini adalah kemampuannya untuk mendapatkan 1500 byte key stream yang valid tanpa perlu mengetahui kunci WEP, yang kemudian dapat digunakan untuk membuat packet arbitrer dan menginjeksikannya ke dalam jaringan, meskipun key stream yang diperoleh hanya valid untuk IV tertentu yang digunakan selama proses fragmentasi.

#### 4.6.2.1.5 Chop-Chop Attack

Chop-Chop Attack adalah teknik cryptanalytic yang memungkinkan penyerang untuk memecahkan enkripsi WEP byte per byte tanpa mengetahui kunci melalui analisis respons access point terhadap packet yang dimodifikasi. Serangan ini bekerja dengan memotong byte terakhir dari packet yang terenkripsi dan mengirimkannya ke access point, kemudian menganalisis respons error dari access point untuk menentukan nilai byte yang benar, lalu mengulangi proses ini secara berurutan hingga seluruh packet terdekripsi. Meskipun tidak secara langsung mengungkap kunci WEP, serangan ini memungkinkan penyerang untuk mendapatkan keystream lengkap untuk IV tertentu yang kemudian dapat digunakan untuk packet injection dan mempercepat pengumpulan IVs yang diperlukan untuk serangan statistical seperti PTW Attack.

#### 4.6.2.1.6 ARP Request Replay Attack

ARP Request Replay Attack adalah metode untuk meningkatkan volume traffic pada jaringan WEP yang diperlukan untuk statistical attacks dengan cara mengulang-ulang paket ARP request. Serangan ini bekerja dengan menangkap satu paket ARP request yang valid dari jaringan, kemudian mengirimkan ulang paket tersebut berulang kali ke access point dengan mengubah alamat MAC sumber setiap kali, menyebabkan access point menghasilkan respons ARP reply yang memperbanyak jumlah IV unik yang tersedia untuk dianalisis. Efektivitas serangan ini terletak pada kemampuannya menghasilkan traffic yang konsisten dan dapat diprediksi dengan IV yang berbeda-beda, sehingga memungkinkan penyerang untuk mengumpulkan jumlah paket yang diperlukan untuk statistical attacks dalam waktu yang lebih singkat dibandingkan menunggu traffic normal.

#### 4.6.2.1.7 Fake Authentication Attack

Fake Authentication Attack adalah teknik untuk melewati kontrol autentikasi pada access point yang dikonfigurasi dengan shared key authentication dengan memalsukan identitas klien yang sah. Serangan ini bekerja dengan melakukan spoofing terhadap alamat MAC klien yang terdaftar, kemudian menyelesaikan challenge-response authentication process menggunakan teknik cryptanalytic untuk menghasilkan respons yang valid terhadap challenge dari access point. Setelah berhasil melakukan fake authentication, penyerang memperoleh akses untuk mengirimkan packet ke access point dan dapat melakukan berbagai serangan lanjutan seperti ARP replay attack atau packet injection, yang pada implementasi WEP dengan shared key authentication menjadi prerequisite untuk kebanyakan serangan cracking kunci.

#### 4.6.2.1.8 Caffe Latte Attack

Caffe Latte Attack adalah teknik inovatif yang memungkinkan penyerang untuk memulihkan kunci WEP dari klien tanpa perlu berada dalam jangkauan access point target. Serangan ini bekerja dengan membuat rogue access point yang meniru jaringan yang sebelumnya telah dikoneksi oleh klien, kemudian memanfaatkan fakta bahwa beberapa client wireless secara otomatis akan mencoba melakukan reassociation dan mengirimkan packet data yang mengandung informasi tentang kunci WEP, bahkan ketika tidak terhubung ke jaringan aslinya. Keunikan serangan ini adalah kemampuannya untuk mengekstrak kunci WEP lengkap hanya dari komunikasi dengan klien tunggal yang tidak terlindungi, menjadikannya ancaman serius terhadap perangkat mobile yang sering berpindah-pindah lokasi dan menyimpan kredensial jaringan sebelumnya.

#### 4.6.2.1.9 Hirte Attack

Hirte Attack adalah pengembangan dari Caffe Latte Attack yang memperluas kemampuan penyerangan terhadap klien WEP dengan menggunakan teknik fragmentasi untuk mempercepat proses pemulihan kunci. Serangan ini bekerja dengan memanfaatkan rogue access point untuk memaksa klien mengirimkan packet data yang lebih besar melalui teknik fragmentasi, sehingga menghasilkan lebih banyak material kriptografi yang dapat dianalisis untuk statistical attacks. Perbaikan utama pada serangan ini adalah efisiensi waktu yang lebih baik dalam memulihkan kunci WEP dibandingkan dengan Caffe Latte Attack orisinal, serta kemampuan untuk bekerja dengan lebih banyak jenis client device dan dalam kondisi jaringan yang lebih beragam, menjadikannya ancaman yang lebih serius terhadap keamanan implementasi WEP pada perangkat klien.

### 4.6.2.2 WPA/WPA2-Personal (PSK)

#### 4.6.2.2.1 Capture Handshake

Capture Handshake adalah proses fundamental dalam penyerangan keamanan Wi-Fi yang bertujuan untuk memperoleh paket autentikasi 4-way handshake antara klien dan access point yang mengandung informasi kriptografi penting untuk memecahkan Pre-Shared Key. Proses ini bekerja dengan memanfaatkan mode monitor pada wireless adapter untuk menangkap semua frame yang ditransmisikan pada channel tertentu, dimana penyerang harus mengidentifikasi jaringan target terlebih dahulu dengan tools seperti airodump-ng untuk mengetahui BSSID, channel, dan MAC address klien yang terhubung, kemudian secara pasif menunggu atau secara aktif memicu proses autentikasi dengan menggunakan deauthentication attack untuk memutus koneksi klien yang sah sehingga klien tersebut akan melakukan reconnect dan menghasilkan 4-way handshake yang dapat ditangkap. Yang membuat proses ini krusial dalam penyerangan Wi-Fi adalah handshake tersebut mengandung Message Integrity Check (MIC) dan Nonce yang digunakan untuk memverifikasi keabsahan password tanpa perlu mengetahui password tersebut secara langsung, sehingga penyerang dapat membawa file handshake yang telah ditangkap untuk dilakukan offline cracking menggunakan berbagai metode seperti dictionary attack atau brute force attack di mesin yang berbeda tanpa terdeteksi oleh sistem keamanan jaringan, meskipun proses capture handshake sendiri memerlukan timing yang tepat dan dapat terhambat oleh faktor seperti sinyal yang lemah, jumlah klien yang terbatas, atau implementasi protection mechanism pada access point modern.

#### 4.6.2.2.2 Deauthentication Attack

Deauthentication Attack adalah serangan yang mengeksploitasi kelemahan dalam manajemen frame pada protokol 802.11 dengan cara mengirimkan paket deauthentication broadcast atau unicast yang memalsukan identitas access point untuk memutuskan koneksi klien yang sah dari jaringan Wi-Fi. Serangan ini bekerja dengan memanfaatkan fakta bahwa frame deauthentication dalam standar 802.11 tidak memerlukan enkripsi atau otentikasi, sehingga peretas dapat menggunakan tools seperti aireplay-ng atau mdk4 untuk secara terus-menerus mengirimkan frame deauthentication yang menyatakan bahwa klien tersebut telah dikeluarkan dari jaringan oleh access point, menyebabkan klien secara otomatis memutuskan koneksi dan melakukan proses reassociation, kemudian pada saat klien mencoba menghubungkan kembali ke access point, peretas dapat menangkap 4-way handshake yang mengandung hash password yang diperlukan untuk melakukan offline cracking. Yang membuat serangan ini sangat efektif adalah kemampuan untuk menjalankannya dari jarak jauh tanpa perlu mengetahui kredensial jaringan, frame deauthentication dapat dikirim dengan rate yang sangat tinggi sehingga membuat koneksi klien menjadi tidak stabil, dan serangan ini dapat menargetkan semua klien dalam jaringan secara bersamaan atau memilih klien tertentu berdasarkan MAC address untuk tujuan yang lebih spesifik, meskipun beberapa implementasi keamanan Wi-Fi modern telah mulai mengadopsi mekanisme proteksi terhadap serangan deauthentication melalui implementasi management frame protection (IEEE 802.11w).

#### 4.6.2.2.3 PMKID Attack

PMKID Attack adalah serangan yang memanfaatkan kerentanan dalam frame RSN Identity (RSN IE) yang secara opsional mengandung Pairwise Master Key Identifier (PMKID) untuk memulihkan Pre-Shared Key tanpa perlu menunggu atau menangkap proses 4-way handshake antara klien dan access point. Serangan ini bekerja dengan mengumpulkan PMKID yang dikirim oleh access point dalam frame beacon atau probe response, dimana PMKID sendiri dihitung menggunakan formula HMAC-SHA1 dengan kunci PMK, string "PMK Name", MAC address access point, dan MAC address klien, kemudian peretas dapat menggunakan tools seperti hcxdumptool untuk menangkap PMKID dan hashcat untuk melakukan offline cracking dengan mode khusus (-m 16800) yang secara sistematis mencoba berbagai password kandidat dari wordlist untuk merekonstruksi PMK yang digunakan menghasilkan PMKID tersebut. Yang membuat serangan ini unik dan efektif adalah peretas dapat melakukan capture target secara pasif tanpa adanya klien yang terhubung ke jaringan, tidak menghasilkan traffic yang mencurigakan yang dapat memicu sistem deteksi intrusi, dan proses capture dapat dilakukan dalam waktu yang sangat singkat hanya dengan beberapa frame yang dikirim access point, sehingga memungkinkan peretas untuk mengumpulkan target dalam jumlah besar kemudian melakukan cracking secara offline di waktu yang berbeda.

#### 4.6.2.2.4 Dictionary Attack

Dictionary Attack adalah serangan yang memanfaatkan kumpulan kata dan frasa umum yang disusun dalam wordlist untuk mencoba memecahkan Pre-Shared Key setelah berhasil menangkap 4-way handshake antara klien dan access point. Serangan ini bekerja dengan menggunakan daftar kata yang telah dikurasi sebelumnya yang berisi ribuan hingga jutaan kombinasi populer seperti password123, admin, qwertyuiop, nama-nama orang, tanggal lahir, kata-kata dalam berbagai bahasa, serta pola-pola umum yang sering digunakan sebagai password Wi-Fi, kemudian untuk setiap kata dalam wordlist tersebut, tools seperti aircrack-ng atau hashcat akan menghitung Pairwise Master Key (PMK) menggunakan fungsi PBKDF2 dengan SSID jaringan sebagai salt dan kata yang dicoba, lalu memverifikasi apakah Message Integrity Check (MIC) yang dihasilkan cocok dengan MIC yang ada dalam handshake packet yang telah ditangkap. Keefektifan serangan ini sangat bergantung pada kualitas dan kelengkapan wordlist yang digunakan, dimana wordlist yang komprehensif seperti rockyou.txt atau crackstation.txt dapat mencakup variasi password yang luas termasuk kombinasi huruf, angka, dan substitusi karakter sederhana, sehingga mampu memecahkan password yang lemah dalam hitungan detik hingga menit tanpa perlu menghabiskan sumber daya komputasi yang signifikan seperti pada brute force attack.

#### 4.6.2.2.5 Brute Force Attack

Brute Force Attack adalah serangan komputasional dimana peretas mencoba semua kemungkinan kombinasi karakter secara sistematis dan berurutan untuk memecahkan Pre-Shared Key setelah berhasil menangkap 4-way handshake antara klien dan access point. Serangan ini bekerja dengan menggunakan tools seperti aircrack-ng atau hashcat yang secara otomatis menghasilkan dan menguji rangkaian karakter mulai dari panjang minimum 8 karakter hingga maksimum 63 karakter, mencakup semua variasi kombinasi huruf (kapital dan non-kapital), angka, serta simbol khusus, kemudian untuk setiap password kandidat tersebut, tools akan menghitung Pairwise Master Key (PMK) menggunakan fungsi PBKDF2 dengan SSID jaringan sebagai salt dan password yang dicoba, lalu memverifikasi apakah Message Integrity Check (MIC) yang dihasilkan cocok dengan MIC yang ada dalam handshake packet yang telah ditangkap. Yang membedakan serangan ini dari dictionary attack adalah pendekatannya yang bersifat exhaustive dan tidak bergantung pada wordlist yang telah ada, sehingga meskipun membutuhkan sumber daya komputasi yang sangat besar dan waktu yang signifikan, serangan ini pada akhirnya dapat memecahkan password apapun tanpa terkecuali, dengan kecepatan proses yang sangat dipengaruhi oleh kekuatan hardware yang digunakan seperti GPU modern yang mampu mencoba ratusan ribu hingga jutaan kombinasi per detik untuk WPA/WPA2-PSK.

#### 4.6.2.2.6 Rainbow Table Attack

Rainbow Table Attack adalah serangan yang memanfaatkan tabel pra-hitung yang berisi mapping antara plaintext password dan hash value yang sesuai untuk mempercepat proses pemecahan Pre-Shared Key setelah berhasil menangkap 4-way handshake antara klien dan access point. Serangan ini bekerja dengan menggunakan tabel yang telah dipersiapkan sebelumnya yang berisi rantai hash dari berbagai variasi password umum beserta hash WPA/WPA2-PSK yang dihasilkan melalui fungsi PBKDF2 dengan SSID tertentu, dimana peretas dapat mencari hash PMK yang diperoleh dari handshake capture dalam rainbow table tersebut untuk langsung menemukan password plaintext yang sesuai tanpa perlu melakukan komputasi hash secara real-time. Yang membuat pendekatan ini efektif secara waktu adalah eliminasi proses komputasi intensif PBKDF2 yang biasanya membutuhkan sumber daya besar, namun implementasinya dalam konteks WPA/WPA2-PSK menjadi kurang praktis karena setiap jaringan memiliki SSID yang berbeda yang berfungsi sebagai salt dalam perhitungan hash, sehingga rainbow table harus dikembangkan secara spesifik untuk setiap SSID target yang membuat ukuran penyimpanan yang diperlukan menjadi sangat besar dan tidak efisien untuk menangani variasi SSID yang tak terbatas dalam dunia nyata.

#### 4.6.2.2.7 Evil Twin Attack

Evil Twin Attack adalah serangan yang melibatkan pembuatan access point palsu yang menyamar sebagai jaringan Wi-Fi legitimate dengan SSID identik untuk menipu klien agar terkoneksi dan mengungkapkan informasi kredensial mereka. Serangan ini bekerja dengan memanfaatkan wireless adapter yang mendukung mode master untuk membuat rogue access point yang memiliki konfigurasi mirip dengan jaringan target, termasuk SSID, BSSID, dan security settings yang sama, kemudian peretas akan meningkatkan sinyal access point palsu tersebut atau melakukan deauthentication attack terhadap access point legitimate untuk memaksa klien melakukan roaming dan terkoneksi ke evil twin, dimana semua traffic yang melalui rogue access point tersebut dapat dimonitor, di-intercept, atau dimanipulasi untuk mencuri Pre-Shared Key dan data sensitif lainnya. Yang membuat serangan ini sangat berbahaya adalah kemampuannya untuk menyajikan halaman login palsu yang terlihat autentik untuk menipu korban memasukkan kredensial mereka, serta kemampuan untuk melakukan man-in-the-middle attack yang memungkinkan peretas mengakses semua komunikasi yang dilakukan klien melalui jaringan palsu tersebut, meskipun korban menggunakan password yang kuat sekalipun, karena kredensial tersebut akan terekspos saat mereka melakukan autentikasi ke sistem yang dikendalikan oleh peretas.

#### 4.6.2.2.8 KRACK (Key Reinstallation Attack)

KRACK (Key Reinstallation Attack) adalah serangan kriptografis yang mengeksploitasi kerentanan dalam implementasi protokol 4-way handshake pada WPA2 dengan memaksa klien untuk melakukan reinstalasi menggunakan nonce yang sama sehingga dapat memecahkan enkripsi Wi-Fi. Serangan ini bekerja dengan memanipulasi proses handshake dengan cara menangkap dan memblokir Message 3 dari access point sehingga klien tidak menerima acknowledgment, kemudian mengirimkan ulang Message 3 tersebut berkali-kali yang memaksa klien untuk melakukan reinstalasi key yang sama dengan parameter nonce yang telah digunakan sebelumnya, menyebabkan reset pada incremental transmit packet number (nonce) dan pengulangan keystream yang digunakan dalam algoritma enkripsi RC4 atau AES-CCMP. Yang membuat serangan ini sangat kritis adalah kemampuannya untuk mem-bypass enkripsi WPA2 tanpa perlu mengetahui Pre-Shared Key, memungkinkan peretas untuk mendekripsi traffic jaringan, menyuntikkan paket palsu, atau mencuri data sensitif yang ditransmisikan melalui koneksi yang sebelumnya dianggap aman, meskipun serangan ini tidak mengungkapkan password Wi-Fi itu sendiri tetapi membahayakan kerahasiaan dan integritas komunikasi data dalam jaringan tersebut.

### 4.6.2.3 WPA/WPA2-Enterprise (802.1X)

#### 4.6.2.3.1 EAP Handshake Capture

EAP Handshake Capture adalah proses penangkapan paket autentikasi Extensible Authentication Protocol (EAP) yang terjadi antara klien, access point, dan RADIUS server selama proses 802.1X authentication. Serangan ini bekerja dengan menggunakan tools seperti Wireshark atau tcpdump dalam mode monitor untuk menangkap seluruh pertukaran frame EAPOL (EAP over LAN) yang mencakup EAP-Identity, EAP-Start, dan berbagai metode EAP seperti EAP-PEAP atau EAP-TTLS, dimana penyerang dapat menganalisis handshake tersebut untuk mendapatkan informasi identitas pengguna (username) serta karakteristik metode autentikasi yang digunakan. Value capture ini terletak pada kemampuannya untuk mengungkap informasi sensitif seperti identity realm organisasi dan dalam beberapa implementasi tertentu yang rentan, bahkan dapat mengekstrak hash kredensial yang dapat digunakan untuk offline analysis atau further attack.

#### 4.6.2.3.2 MITM Attack

MITM (Man-in-the-Middle) Attack pada WPA/WPA2-Enterprise adalah teknik serangan dimana penyerang menyisipkan diri di antara klien dan RADIUS server untuk mengintercept, memanipulasi, atau mencegat komunikasi autentikasi. Serangan ini bekerja dengan membangun rogue access point atau melakukan ARP poisoning untuk meredirect traffic autentikasi melalui sistem penyerang, kemudian menggunakan tools seperti FreeRADIUS-WPE atau hostapd-wpe untuk memalsukan certificate dan menipu klien agar mempercayai server palsu tersebut. Yang membuat serangan ini efektif adalah kemampuannya untuk mengeksploitasi kelemahan dalam validasi certificate pada sisi klien, terutama ketika pengguna mengabaikan warning certificate mismatch, sehingga memungkinkan penyerang untuk mencuri kredensial domain atau certificate client secara real-time.

#### 4.6.2.3.3 Evil Twin Attack

Evil Twin Attack dalam konteks Enterprise adalah serangan yang melibatkan pembuatan access point palsu yang meniru jaringan corporate legitimate dengan konfigurasi 802.1X yang sama untuk menipu pengguna agar melakukan autentikasi. Serangan ini bekerja dengan mereplikasi SSID, security settings, dan bahkan certificate server yang mirip dengan jaringan target, kemudian menggunakan RADIUS server palsu yang dilengkapi dengan kemampuan untuk mencatat semua kredensial yang dimasukkan pengguna selama proses autentikasi. Tingkat keberhasilan serangan ini sangat tinggi mengingat kebiasaan pengguna yang cenderung langsung terkoneksi ke jaringan corporate tanpa memverifikasi authenticity certificate secara detail, terutama ketika menggunakan device mobile yang memiliki user interface terbatas untuk validasi security warning.

#### 4.6.2.3.4 Downgrade Attack

Downgrade Attack adalah teknik serangan yang memaksa klien untuk menggunakan metode autentikasi yang lebih lemah atau protocol versi lama yang memiliki kerentanan keamanan yang diketahui. Serangan ini bekerja dengan memanipulasi negotiation process antara klien dan access point dengan cara memblokir offer untuk metode autentikasi yang kuat seperti EAP-TLS, kemudian memaksa klien untuk menggunakan metode yang lebih rentan seperti EAP-MD5 atau EAP-LEAP yang mudah di-crack. Efektivitas serangan ini bergantung pada konfigurasi client supplicant yang memungkinkan fallback ke metode legacy dan kurangnya enforcement policy pada network infrastructure untuk menolak metode autentikasi yang tidak secure.

#### 4.6.2.3.5 RADIUS Impersonation Attack

RADIUS Impersonation Attack adalah serangan dimana penyerang memalsukan identitas RADIUS server legitimate untuk menipu access point dan menangkap kredensial autentikasi. Serangan ini bekerja dengan mengeksploitasi shared secret yang lemah antara access point dan RADIUS server, atau dengan melakukan spoofing terhadap IP address RADIUS server menggunakan teknik ARP poisoning atau DNS spoofing. Penyerang kemudian dapat menggunakan RADIUS server palsu yang dilengkapi dengan database user dummy untuk menangkap request autentikasi dan menganalisis kredensial yang dikirimkan, dengan risiko khusus pada implementasi yang menggunakan metode autentikasi berdasarkan password seperti EAP-PEAP-MSCHAPv2 yang rentan terhadap offline cracking.

#### 4.6.2.3.6 Dictionary Attack

Dictionary Attack pada WPA/WPA2-Enterprise adalah teknik untuk memecahkan kredensial autentikasi yang telah berhasil ditangkap selama proses EAP handshake dengan mencoba kata-kata umum dari predefined wordlist. Serangan ini bekerja dengan mengekstrak hash MS-CHAPv2 atau challenge-response dari captured packet, kemudian menggunakan tools seperti asleap, john the ripper, atau hashcat untuk secara sistematis mencoba setiap kata dalam wordlist terhadap hash tersebut. Keberhasilan serangan ini sangat tergantung pada kekuatan password yang digunakan pengguna, dimana password yang pendek, tidak kompleks, atau berdasarkan kata-kata umum dalam dictionary dapat dipecahkan dalam hitungan menit hingga jam.

#### 4.6.2.3.7 Brute Force Attack

Brute Force Attack dalam lingkungan Enterprise adalah pendekatan komputasional untuk memecahkan kredensial dengan mencoba semua kemungkinan kombinasi karakter secara exhaustive terhadap captured authentication data. Serangan ini bekerja dengan mengambil captured EAP handshake yang mengandung NT-hash atau MS-CHAPv2 challenge, kemudian menggunakan high-performance computing resources seperti GPU cluster untuk menghasilkan dan menguji semua kombinasi karakter yang mungkin sesuai dengan password policy organisasi. Meskipun membutuhkan waktu dan resources yang signifikan, serangan ini pada akhirnya dapat memecahkan bahkan password yang kompleks sekalipun, dengan tingkat keberhasilan yang dipengaruhi oleh faktor seperti panjang password, kompleksitas karakter, dan kekuatan computing resources yang digunakan penyerang.

### 4.6.2.4 WPA3-Personal (SAE)


#### 4.6.2.4.1 Dragonblood Attack

Dragonblood Attack merupakan kumpulan kerentanan kritis yang ditemukan pada protokol SAE (Simultaneous Authentication of Equals) yang digunakan dalam WPA3-Personal, mencakup downgrade attack, side-channel attack, dan denial of service yang memungkinkan penyerang mengeksploitasi kelemahan implementasi dan desain handshake WPA3. Serangan ini terdiri dari beberapa varian seperti downgrade attack yang memaksa client dan AP untuk menggunakan weak elliptic curve groups atau bahkan menurunkan koneksi ke WPA2 jika transition mode diaktifkan, side-channel leaks yang memanfaatkan timing information dan cache-based attacks untuk mengekstrak informasi tentang password melalui analisis waktu respon selama proses SAE handshake, serta partition attack yang memanfaatkan kelemahan dalam hunting-and-pecking algorithm untuk melakukan offline dictionary attack. Selain itu, Dragonblood juga mencakup DoS attack melalui resource exhaustion dengan mengirimkan commit frames yang tidak valid secara masif, serta authentication bypass melalui eksploitasi implementasi yang salah pada beberapa vendor yang tidak melakukan validasi proper terhadap SAE elements. Kerentanan ini sangat serius karena menyerang protokol yang dirancang untuk menggantikan WPA2 dan seharusnya lebih aman, namun implementasi awal WPA3 terbukti memiliki berbagai kelemahan yang dapat dieksploitasi.

#### 4.6.2.4.2 Downgrade Attack

Downgrade Attack merupakan serangan yang memaksa client WPA3 dan access point untuk menurunkan tingkat keamanan koneksi dari WPA3-SAE ke WPA2-PSK atau menggunakan elliptic curve group yang lebih lemah dengan memanipulasi frame management selama proses negotiation. Serangan ini mengeksploitasi WPA3 transition mode yang memungkinkan backward compatibility dengan WPA2, di mana penyerang dapat melakukan frame injection atau spoofing untuk memodifikasi informasi capabilities yang diiklankan oleh AP, membuat client mengira bahwa AP hanya mendukung WPA2 sehingga melakukan fallback ke protokol yang lebih lemah. Setelah koneksi berhasil di-downgrade ke WPA2, penyerang dapat melakukan serangan konvensional WPA2 seperti 4-way handshake capture dan offline dictionary attack untuk memecahkan password. Selain itu, downgrade attack juga dapat menargetkan negotiation elliptic curve group dalam SAE handshake dengan memaksa penggunaan weak groups seperti group 22 atau 23 yang lebih rentan terhadap cryptographic attack dibandingkan recommended groups seperti group 19 atau 20. Serangan ini sangat berbahaya karena dapat dilakukan secara transparan tanpa disadari oleh user, dan sulit dideteksi karena downgrade terlihat seperti proses negotiation yang normal.

#### 4.6.2.4.3 Side-Channel

Side-Channel Attack merupakan serangan yang mengeksploitasi informasi yang bocor melalui karakteristik fisik atau timing implementation dari proses kriptografi SAE (Simultaneous Authentication of Equals) pada WPA3, seperti waktu pemrosesan, konsumsi daya, atau cache access patterns untuk mengekstrak informasi sensitif tentang password tanpa melakukan brute force langsung. Serangan ini memanfaatkan kelemahan dalam hunting-and-pecking algorithm yang digunakan SAE untuk mengkonversi password menjadi elliptic curve point, di mana variasi waktu eksekusi (timing leaks) saat memproses password yang berbeda dapat dianalisis untuk menentukan apakah guess password benar atau salah sebelum handshake selesai. Penyerang dapat melakukan timing analysis dengan mengirimkan ribuan SAE commit frames dan mengukur waktu respon dari access point dengan presisi tinggi untuk membedakan antara valid dan invalid password candidates, atau melakukan cache-based side-channel attack pada implementasi yang rentan di mana akses ke memory cache selama operasi kriptografi dapat mengungkapkan informasi tentang nilai intermediat dalam perhitungan. Serangan ini sangat berbahaya karena dapat dilakukan secara remote tanpa memerlukan akses fisik ke perangkat, memungkinkan offline password recovery yang lebih cepat dibandingkan dictionary attack konvensional, dan sulit dideteksi karena terlihat seperti failed authentication attempts yang normal.


#### 4.6.2.4.4 Evil-Twin Attack Via Downgrade

Evil-Twin Attack Via Downgrade merupakan serangan yang menggabungkan teknik evil twin dengan downgrade attack untuk memaksa client WPA3 terhubung ke rogue access point yang menyamar sebagai AP legitimate namun hanya menawarkan WPA2 atau bahkan open network untuk mencuri kredensial atau melakukan man-in-the-middle. Serangan ini dilakukan dengan cara penyerang membuat fake access point dengan SSID dan MAC address yang identik dengan target AP, kemudian melakukan deauthentication attack untuk memutuskan client dari AP asli, sementara rogue AP mengiklankan diri sebagai WPA2-only atau transition mode untuk memaksa client melakukan downgrade dari WPA3 ke WPA2. Ketika client terhubung ke evil twin AP dengan menggunakan WPA2, penyerang dapat menangkap 4-way handshake untuk offline cracking, atau jika menggunakan captive portal yang menyerupai halaman autentikasi legitimate, dapat melakukan credential harvesting dengan meminta user memasukkan password jaringan atau kredensial perusahaan. Serangan ini sangat efektif karena banyak client device secara otomatis akan melakukan downgrade dan terhubung ke rogue AP tanpa memberikan warning yang jelas kepada user, terutama jika device dikonfigurasi untuk auto-connect ke saved networks.

#### 4.6.2.4.5 Denial-of-Service (DoS)

Denial-of-Service (DoS) Attack pada WPA3-SAE merupakan serangan yang mengeksploitasi computational overhead dari protokol SAE dengan membanjiri access point menggunakan SAE commit frames yang tidak valid atau malformed dalam jumlah masif untuk menghabiskan resource CPU dan memori perangkat. Serangan ini memanfaatkan fakta bahwa proses SAE handshake memerlukan operasi kriptografi yang intensif seperti elliptic curve operations dan hunting-and-pecking algorithm yang jauh lebih resource-intensive dibandingkan WPA2, sehingga AP harus melakukan perhitungan kompleks untuk setiap SAE commit frame yang diterima bahkan sebelum memvalidasi apakah request tersebut legitimate atau tidak. Penyerang dapat mengirimkan ribuan SAE commit frames dengan random MAC addresses, invalid scalars, atau malformed elliptic curve points yang memaksa AP memproses setiap request hingga tahap validasi cryptographic, menyebabkan CPU usage mencapai 100% dan membuat AP tidak responsif untuk melayani client yang legitimate. Selain resource exhaustion, penyerang juga dapat mengeksploitasi anti-clogging token mechanism yang dirancang untuk mencegah DoS, namun implementasi yang buruk justru dapat dimanipulasi untuk menyebabkan DoS lebih parah atau memaksa AP terus-menerus regenerate tokens. Serangan ini sangat mengganggu karena dapat melumpuhkan seluruh jaringan WPA3 tanpa memerlukan pengetahuan password.

### 4.6.2.5 WPS
#### 4.6.2.5.1 PIN Brute Force Attack

PIN Brute Force Attack adalah serangan sistematis terhadap mekanisme autentikasi WPS dengan mencoba semua kemungkinan kombinasi PIN 8-digit untuk memperoleh kredensial akses jaringan Wi-Fi. Serangan ini bekerja dengan memanfaatkan kelemahan desain WPS yang membagi PIN menjadi dua bagian terpisah (4-digit dan 3-digit dengan checksum digit ke-8) sehingga mengurangi ruang pencarian dari 10⁸ menjadi hanya 10⁴ + 10³ = 11.000 kemungkinan, kemudian menggunakan tools seperti reaver atau bully untuk secara berurutan menguji setiap kombinasi PIN terhadap access point target. Yang membuat serangan ini efektif adalah adanya mekanisme lockout yang tidak konsisten pada berbagai implementasi WPS, dimana banyak perangkat tidak menerapkan pembatasan percobaan yang ketat atau memiliki waktu lockout yang dapat di-bypass, memungkinkan penyerang untuk mencoba seluruh ruang PIN dalam waktu 4-10 jam pada kondisi optimal, meskipun serangan ini menghasilkan traffic yang signifikan dan dapat terdeteksi oleh sistem monitoring.

#### 4.6.2.5.2 Pixie Dust Attack

Pixie Dust Attack adalah serangan kriptografis yang mengeksploitasi kelemahan dalam generasi bilangan acak (entropy) pada implementasi WPS tertentu untuk memulihkan PIN WPS dalam waktu singkat. Serangan ini bekerja dengan menganalisis nilai-nilai nonce, PK-E, dan PK-R yang dipertukarkan selama proses autentikasi WPS, kemudian menggunakan offline computation dengan tools seperti pixiewps untuk melakukan brute force terhadap ruang kunci yang sangat terbatas yang dihasilkan dari weak random number generator. Keefektifan serangan ini sangat bergantung pada vendor dan model access point tertentu, dimana implementasi WPS pada perangkat Broadcom, Realtek, dan Ralink tertentu diketahui rentan, memungkinkan penyerang untuk memulihkan PIN WPS hanya dalam hitungan detik hingga menit dengan persyaratan minimal hanya satu percobaan autentikasi WPS yang berhasil ditangkap.

#### 4.6.2.5.3 Physical Access Attack (Push Button Configuration)

Physical Access Attack adalah teknik yang memanfaatkan fitur WPS Push Button Configuration (PBC) dengan mendapatkan akses fisik sementara ke perangkat untuk menginisiasi proses pairing tanpa otorisasi. Serangan ini bekerja dengan menunggu atau memicu kondisi dimana pengguna sah sedang mengaktifkan mode PBC pada access point mereka, kemudian penyerang yang berada dalam jangkauan fisik segera menekan tombol WPS pada client device mereka untuk memanfaatkan window opportunity yang biasanya berlangsung 2-5 menit. Kerentanan utama dalam serangan ini adalah ketidakmampuan access point untuk membedakan antara perangkat yang sah dan tidak sah selama mode PBC aktif, ditambah dengan kurangnya mekanisme notifikasi kepada pengguna ketika perangkat baru berhasil terhubung, membuatnya menjadi ancaman serius dalam lingkungan dengan akses fisik yang tidak terkontrol seperti area publik atau perkantoran.

#### 4.6.2.5.4 Null PIN Attack

Null PIN Attack adalah eksploitasi yang memanfaatkan implementasi WPS yang tidak benar pada beberapa access point dimana sistem menerima PIN kosong atau null sebagai kredensial yang valid. Serangan ini bekerja dengan mengirimkan paket autentikasi WPS yang berisi PIN dengan nilai nol atau kosong, kemudian access point yang rentan akan memproses permintaan tersebut dan mengembalikan kredensial WPA/WPA2-PSK tanpa verifikasi lebih lanjut. Meskipun kerentanan ini relatif jarang ditemukan pada perangkat modern, beberapa model access point lama dari vendor tertentu diketahui memiliki implementasi WPS yang tidak melakukan validasi panjang dan format PIN dengan benar, memungkinkan penyerang untuk mendapatkan akses jaringan tanpa perlu melakukan proses brute force yang memakan waktu.

#### 4.6.2.5.5 Known PIN Attack

Known PIN Attack adalah pendayagunaan PIN WPS yang telah diketahui sebelumnya melalui berbagai metode seperti default configuration, information leakage, atau social engineering untuk mendapatkan kredensial akses jaringan. Serangan ini bekerja dengan menggunakan PIN yang telah diperoleh untuk menyelesaikan proses autentikasi WPS yang legitimate, kemudian access point akan memberikan kredensial WPA/WPA2-PSK tanpa perlawanan lebih lanjut. Sumber kerentanan utama dalam skenario ini adalah praktik buruk seperti penggunaan PIN default yang tidak diubah oleh administrator, pencetakan PIN pada sticker perangkat yang mudah diakses, atau kebocoran informasi melalui teknik reconnaissance, dimana sekali PIN diketahui, penyerang dapat dengan mudah mendapatkan kunci jaringan yang sebenarnya tanpa meninggalkan jejak percobaan brute force yang mencurigakan.


### 4.6.2.6 Serangan Lainnya

#### 4.6.2.6.1 Beacon Flooding Attack

Beacon Flooding Attack adalah serangan denial-of-service yang mengirimkan sejumlah besar frame beacon palsu untuk mengganggu operasi normal jaringan Wi-Fi dan membingungkan perangkat klien. Serangan ini bekerja dengan menghasilkan ribuan frame beacon yang berisi SSID acak atau meniru jaringan legitimate menggunakan tools seperti mdk4 atau airbase-ng, menyebabkan daftar jaringan available pada perangkat klien menjadi penuh dengan entri palsu dan kesulitan dalam mengidentifikasi jaringan yang sah. Dampak serangan ini termasuk pembuangan baterai perangkat klien yang cepat akibat pemrosesan terus-menerus terhadap frame beacon, kesulitan pengguna dalam menemukan jaringan yang legitimate, dan dalam beberapa kasus dapat menyebabkan crash pada driver wireless tertentu yang tidak dapat menangani volume beacon frame yang sangat tinggi.

#### 4.6.2.6.2 Authentication DoS Attack

Authentication DoS Attack adalah serangan yang menargetkan access point dengan mengirimkan permintaan autentikasi dalam volume besar dari alamat MAC yang berbeda-beda untuk menghabiskan sumber daya sistem. Serangan ini bekerja dengan memanfaatkan fakta bahwa setiap permintaan autentikasi memerlukan alokasi memori dan pemrosesan oleh access point, dimana penyerang menggunakan tools seperti macchanger combined dengan mdk3 untuk menghasilkan ribuan permintaan autentikasi dengan alamat MAC acak per menit. Efek yang ditimbulkan meliputi penurunan kinerja access point secara signifikan, hang atau restart pada perangkat dengan spesifikasi rendah, dan dalam kondisi ekstrem dapat mengakibatkan ketidakmampuan klien sah untuk melakukan autentikasi karena tabel asosiasi access point telah penuh.

#### 4.6.2.6.3 SSID Probing and Bruteforcing Attack

SSID Probing and Bruteforcing Attack adalah teknik reconnaissance yang bertujuan mengungkap SSID tersembunyi dengan mengirimkan probe request berisi daftar kemungkinan nama SSID atau melakukan brute force terhadap pola penamaan tertentu. Serangan ini bekerja dengan memanfaatkan mekanisme probe response yang dikirim oleh access point ketika menerima probe request yang cocok dengan SSID-nya, meskipun SSID tersebut disembunyikan, kemudian menggunakan wordlist berisi nama-nama SSID umum atau pola tertentu seperti nama perusahaan, lokasi, atau kombinasi kata kunci populer. Metode ini efektif untuk mengumpulkan intelligence tentang jaringan target sebelum melakukan serangan lebih lanjut, dan dapat dikombinasikan dengan teknik social engineering untuk meningkatkan akurasi prediksi SSID tersembunyi.

#### 4.6.2.6.4 Disassociation Attack

Disassociation Attack adalah serangan management frame yang mengirimkan paket disassociation palsu untuk memutus koneksi klien sah dari jaringan Wi-Fi secara sementara atau terus-menerus. Berbeda dengan deauthentication attack yang mengembalikan klien ke state unauthenticated, serangan ini bekerja dengan mengirimkan frame disassociation yang memalsukan identitas access point untuk menginformasikan kepada klien bahwa mereka telah diputus dari jaringan, memaksa klien untuk melakukan reassociation tanpa melalui proses autentikasi ulang yang lengkap. Serangan ini sangat efektif untuk menciptakan gangguan koneksi intermittent atau untuk memancing transmisi ulang frame tertentu yang dapat ditangkap untuk analisis lebih lanjut, dan dalam implementasi yang tidak dilindungi management frame protection, serangan ini dapat dilakukan tanpa hambatan.

#### 4.6.2.6.5 Michael Countermeasures Exploitation Attack

Michael Countermeasures Exploitation Attack adalah serangan yang sengaja memicu mekanisme countermeasures pada WPA-TKIP untuk melakukan denial-of-service terhadap jaringan target. Serangan ini bekerja dengan mengirimkan sejumlah besar frame yang dimanipulasi untuk menghasilkan MIC failure dalam waktu singkat, menyebabkan access point mengaktifkan proteksi Michael yang secara otomatis memblokir semua komunikasi dari klien target selama 60 detik sebagai respon terhadap kemungkinan serangan aktif. Penyerang dapat memanfaatkan periode blokir ini untuk melancarkan serangan lain, atau secara terus-menerus memicu countermeasures untuk membuat jaringan menjadi tidak stabil dan tidak dapat digunakan oleh pengguna sah.

#### 4.6.2.6.6 EAPOL Start and Logoff Packet Injection Attack

EAPOL Start and Logoff Packet Injection Attack adalah serangan yang menyuntikkan frame EAPOL logoff palsu untuk memutus koneksi klien dalam jaringan WPA/WPA2-Enterprise atau mengirim frame EAPOL start untuk memicu proses autentikasi ulang yang tidak diperlukan. Serangan ini bekerja dengan memalsukan alamat MAC klien target dan mengirimkan EAPOL logoff frame ke access point, menyebabkan sistem melepaskan koneksi klien tersebut, atau dengan mengirimkan EAPOL start frame untuk memaksa klien melakukan autentikasi ulang yang dapat ditangkap untuk dianalisis. Dampak serangan ini termasuk gangguan availability yang signifikan dalam lingkungan enterprise dan potensi exposure kredensial selama proses autentikasi ulang yang berulang.

#### 4.6.2.6.7 Mesh Network Attacks (IEEE 802.11s)

Mesh Network Attacks adalah serangan yang menargetkan kerentanan spesifik dalam implementasi standar IEEE 802.11s untuk jaringan mesh Wi-Fi. Serangan ini mencakup eksploitasi terhadap protokol routing HWMP (Hybrid Wireless Mesh Protocol) dengan melakukan route poisoning, pembuatan rogue mesh point yang menyamar sebagai node sah, serangan terhadap mekanisme peer discovery, dan exploit terhadap kelemahan dalam proses path selection. Yang membuat serangan ini berbahaya adalah kemampuan untuk mengganggu seluruh topologi mesh dari satu titik kompromi, melakukan man-in-the-middle attack melalui manipulasi routing path, atau bahkan mengisolasi bagian tertentu dari jaringan mesh melalui targeted route disruption.

#### 4.6.2.6.8 WIDS/WIPS Confusion Attack

WIDS/WIPS Confusion Attack adalah teknik yang bertujuan mengelabui sistem Wireless Intrusion Detection/Prevention System dengan menghasilkan traffic yang menyerupai serangan palsu atau menyembunyikan serangan nyata di antara noise. Serangan ini bekerja dengan memanfaatkan kelemahan dalam algoritma deteksi WIDS/WIPS dengan cara mengirimkan frame-frame yang memicu false positive secara bersamaan dengan serangan sesungguhnya, atau dengan memodifikasi karakteristik serangan untuk menghindari signature-based detection. Teknik ini dapat mengakibatkan alert fatigue pada administrator keamanan atau membuat sistem WIPS memblokir traffic yang sah sementara membiarkan serangan nyata lolos dari deteksi.

#### 4.6.2.6.9 Packet Fuzzer Attack

Packet Fuzzer Attack adalah pendekatan black-box testing yang mengirimkan paket Wi-Fi yang dimanipulasi atau tidak valid untuk menemukan kerentanan zero-day dalam implementasi protokol 802.11 pada perangkat target. Serangan ini bekerja dengan menggunakan tools seperti boofuzz atau kitty untuk secara sistematis memvariasi field-field dalam frame 802.11, termasuk management frames, control frames, dan data frames, kemudian memantau respons perangkat target untuk mengidentifikasi keanehan seperti crash, hang, atau behavior tidak terduga. Meskipun membutuhkan waktu dan resources yang signifikan, serangan ini dapat mengungkap kerentanan kritikal seperti buffer overflow, integer overflow, atau logic error yang dapat dieksploitasi untuk mengambil kendali perangkat atau menimbulkan denial-of-service kondisi permanen.
