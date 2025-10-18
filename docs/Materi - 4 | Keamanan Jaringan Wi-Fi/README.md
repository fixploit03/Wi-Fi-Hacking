# Materi - 4 | Keamanan Jaringan Wi-Fi

![Materi - 4 | Keamanan Jaringan Wi-Fi](https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/Materi%20-%204%20%7C%20Keamanan%20Jaringan%20Wi-Fi/img/materi%204.jpg)

Materi - 4 | Keamanan Jaringan Wi-Fi
Keamanan jaringan Wi-Fi merupakan aspek penting untuk melindungi data dan privasi pengguna dari akses tidak sah. Jaringan Wi-Fi yang tidak aman dapat menjadi pintu masuk bagi serangan siber, seperti pencurian data, penyadapan, hingga penyalahgunaan bandwidth. Dokumen ini membahas protokol keamanan Wi-Fi, cipher, metode autentikasi, proses handshake, dan berbagai jenis serangan yang dapat mengancam jaringan Wi-Fi.
4.1 Protokol Keamanan Wi-Fi
Protokol keamanan Wi-Fi dirancang untuk melindungi data yang dikirimkan melalui jaringan nirkabel. Berikut adalah penjelasan mengenai protokol utama: WEP, WPA, WPA2, dan WPA3.
4.1.1 WEP (Wired Equivalent Privacy)
WEP adalah protokol keamanan nirkabel pertama yang dikembangkan untuk standar IEEE 802.11, bertujuan memberikan tingkat keamanan setara dengan jaringan kabel.
Tahun Rilis: 1997  
Karakteristik:  

Menggunakan algoritma enkripsi RC4 dengan panjang kunci 64-bit (40-bit kunci + 24-bit Initialization Vector) atau 128-bit (104-bit kunci + 24-bit IV).  
Kunci enkripsi bersifat statis (tidak berubah secara otomatis).  
Dirancang untuk melindungi data melalui enkripsi dan autentikasi sederhana.

Kelemahan:  

Rentan terhadap serangan karena Initialization Vector (IV) yang pendek (24-bit) dan dapat digunakan kembali, memungkinkan analisis pola.  
Dapat dipecahkan dalam hitungan menit menggunakan alat seperti Aircrack-ng.  
Tidak memiliki mekanisme distribusi kunci yang aman, sehingga kunci sering dibagikan secara manual.  
Tidak mendukung otentikasi pengguna yang kuat, meningkatkan risiko akses tidak sah.

Status:WEP dianggap usang dan tidak aman sejak 2004. IEEE merekomendasikan penggunaan protokol yang lebih aman seperti WPA2 atau WPA3.  
Rekomendasi Penggunaan:Jangan gunakan WEP pada jaringan modern karena kerentanannya yang signifikan. Gunakan WPA3 atau minimal WPA2.
4.1.2 WPA (Wi-Fi Protected Access)
WPA dikembangkan untuk mengatasi kelemahan WEP sebagai solusi sementara sebelum peluncuran WPA2, berdasarkan standar IEEE 802.11.
Tahun Rilis: 2003  
Karakteristik:  

Menggunakan algoritma enkripsi RC4 dengan TKIP (Temporal Key Integrity Protocol) untuk meningkatkan keamanan dibandingkan WEP.  
Mendukung kunci dinamis melalui autentikasi 802.1X (WPA-Enterprise) atau Pre-Shared Key (PSK) untuk WPA-Personal.  
Panjang kunci hingga 256-bit, dengan pembaruan kunci secara periodik.  
Menyediakan integritas data melalui Message Integrity Check (MIC).

Kelemahan:  

TKIP rentan terhadap serangan seperti Beck-Tews, yang memungkinkan dekripsi paket tertentu.  
Masih menggunakan RC4, yang memiliki kelemahan kriptografis.  
Performa jaringan dapat menurun karena overhead pemrosesan TKIP.

Status:WPA dianggap usang sejak diperkenalkannya WPA2 pada 2004. Tidak direkomendasikan untuk jaringan modern.
4.1.3 WPA2 (Wi-Fi Protected Access 2)
WPA2 adalah protokol keamanan generasi kedua yang mengimplementasikan standar lengkap IEEE 802.11i, menggantikan WPA dan WEP.
Tahun Rilis: 2004  
Karakteristik:  

Menggunakan algoritma enkripsi AES dengan CCMP (Counter Mode with Cipher Block Chaining Message Authentication Code Protocol).  
Mendukung WPA2-Personal (PSK) untuk jaringan kecil dan WPA2-Enterprise (802.1X) untuk lingkungan korporat.  
Panjang kunci enkripsi 128-bit, dengan pembaruan kunci dinamis melalui 4-way handshake untuk Pairwise Transient Key (PTK) dan Group Temporal Key (GTK).  
Menyediakan Protected Management Frames (PMF) opsional untuk melindungi dari serangan deautentikasi.

Kelemahan:  

Rentan terhadap serangan KRACK (Key Reinstallation Attack) pada 2017, yang mengeksploitasi 4-way handshake (memerlukan patch).  
FragAttacks (2021) mengeksploitasi kerentanan pada fragmentasi frame Wi-Fi.  
Kata sandi lemah pada mode Personal rentan terhadap serangan brute-force.  
Tidak mendukung forward secrecy.

Status:WPA2 masih banyak digunakan pada 2025 karena kompatibilitasnya, tetapi dianggap kurang aman dibandingkan WPA3. WPA3 menjadi standar wajib untuk sertifikasi Wi-Fi sejak 2020.
4.1.4 WPA3 (Wi-Fi Protected Access 3)
WPA3 adalah protokol keamanan generasi ketiga yang diperkenalkan oleh Wi-Fi Alliance untuk mengatasi kelemahan WPA2.
Tahun Rilis: 2018  
Karakteristik:  

Menggunakan algoritma enkripsi AES dengan GCMP-256 (Galois/Counter Mode Protocol).  
Memperkenalkan SAE (Simultaneous Authentication of Equals) untuk autentikasi yang lebih aman, menggantikan PSK tradisional.  
Mendukung WPA3-Personal (kata sandi) dan WPA3-Enterprise (autentikasi 802.1X dengan enkripsi 192-bit).  
Wajib menggunakan Protected Management Frames (PMF) untuk mencegah serangan deautentikasi.  
Menyediakan forward secrecy untuk melindungi data masa lalu.

Kelemahan:  

Kompatibilitas terbatas pada perangkat lama, memaksa penggunaan mode transisi (WPA2/WPA3).  
Rentan terhadap serangan Dragonblood (2019) pada implementasi awal, meskipun patch telah tersedia.  
Membutuhkan perangkat keras modern, meningkatkan biaya untuk jaringan skala besar.  
Kata sandi lemah masih rentan terhadap serangan.

Status:Pada 2025, WPA3 adalah standar keamanan Wi-Fi terkini dan wajib untuk sertifikasi perangkat Wi-Fi. Direkomendasikan untuk jaringan modern.
4.1.5 Tabel Rangkuman Perbandingan Protokol Keamanan



Protokol
Tahun
Enkripsi
Keamanan
Status
Rekomendasi



WEP
1997
RC4 (64/128-bit)
Sangat Lemah
Deprecated
Jangan Gunakan


WPA
2003
TKIP (RC4)
Lemah
Deprecated
Jangan Gunakan


WPA2
2004
AES-CCMP
Kuat
Active
Minimum Standard


WPA3
2018
AES-GCMP (128/192-bit)
Sangat Kuat
Active
Sangat Direkomendasikan


4.2 Cipher
Cipher adalah algoritma kriptografi yang digunakan untuk mengenkripsi dan melindungi data pada jaringan Wi-Fi. Cipher bekerja bersama protokol autentikasi untuk menghasilkan kunci dinamis.
4.2.1 Karakteristik Cipher
4.2.1.1 RC4

Digunakan pada: WEP dan WPA (dengan TKIP).  
Jenis: Stream cipher, cepat namun lemah.  
Kelemahan: Rentan terhadap serangan kriptografis, seperti analisis IV pada WEP.  
Status: Tidak direkomendasikan untuk jaringan modern.

4.2.1.2 AES-CCMP

Digunakan pada: WPA2, WPA3.  
Jenis: Block cipher dengan enkripsi 128-bit.  
Keunggulan: Menyediakan enkripsi dan autentikasi data yang kuat.  
Status: Standar aman untuk jaringan modern hingga 2025.

4.2.1.3 AES-GCMP

Digunakan pada: WPA3.  
Jenis: Block cipher dengan enkripsi 128-bit (Personal) atau 256-bit (Enterprise).  
Keunggulan: Lebih efisien dibandingkan CCMP, menggunakan Galois Message Authentication Code (GMAC).  
Status: Pilihan terbaik untuk jaringan modern.

4.2.2 Cara Kerja Cipher
Cipher bekerja bersama protokol autentikasi untuk menghasilkan kunci dinamis:  

Pairwise Transient Key (PTK): Untuk komunikasi unicast antara client dan AP.  
Group Temporal Key (GTK): Untuk komunikasi broadcast/multicast.

4.2.3 Tabel Penggunaan Cipher



Cipher
Protokol
Keterangan



RC4/TKIP
WEP, WPA
Usang, hanya untuk perangkat lama, kurang aman.


AES-CCMP
WPA2
Standar modern, aman untuk kebanyakan jaringan.


AES-GCMP
WPA3
Keamanan tinggi, efisien, cocok untuk enterprise & IoT.


Rekomendasi Praktis:  

Gunakan WPA2/WPA3-Personal dengan AES-CCMP atau AES-GCMP.  
Hindari mode campuran (WPA/WPA2 atau TKIP/AES) untuk mencegah penurunan keamanan.  
Migrasi ke WPA3 dengan AES-GCMP untuk keamanan optimal.

4.3 Metode Autentikasi
Metode autentikasi menentukan bagaimana perangkat diizinkan mengakses jaringan Wi-Fi. Berikut adalah metode utama:
4.3.1 Open Authentication
Open Authentication memungkinkan perangkat terhubung tanpa validasi kredensial, menjadikannya metode dengan keamanan terendah.
Karakteristik Utama:  

Akses Tanpa Kredensial: Tidak memerlukan kata sandi atau sertifikat.  
Enkripsi Opsional:  
Traditional Open: Tanpa enkripsi, data dikirim dalam plaintext.  
WPA3 Enhanced Open: Menggunakan Opportunistic Wireless Encryption (OWE) untuk enkripsi tanpa autentikasi.


Risiko Keamanan:  
Rentan terhadap eavesdropping dan serangan man-in-the-middle.  
Penyalahgunaan bandwidth oleh pihak tidak sah.



Rekomendasi: Gunakan WPA3 Enhanced Open untuk jaringan publik jika enkripsi diperlukan.
4.3.2 Pre-Shared Key (PSK)
PSK menggunakan kata sandi statis untuk autentikasi, cocok untuk jaringan rumah atau kantor kecil.
Karakteristik Utama:  

Kunci Statis: Frasa sandi dibagikan secara manual pada AP dan client.  
Mekanisme Autentikasi:  
WPA/WPA2: 4-way handshake dengan Pairwise Master Key (PMK).  
WPA3: SAE (Simultaneous Authentication of Equals) untuk perlindungan terhadap serangan offline.


Keunggulan: Mudah dikonfigurasi, tidak memerlukan server tambahan.  
Kelemahan:  
Rentan terhadap serangan brute-force jika kata sandi lemah.  
Manajemen kunci sulit untuk jaringan besar.



Rekomendasi: Gunakan kata sandi yang kuat (minimal 12 karakter, campuran huruf, angka, simbol).
4.3.3 Enterprise Authentication (RADIUS, 802.1X)
Enterprise Authentication menggunakan server RADIUS dan protokol 802.1X untuk autentikasi berbasis identitas, cocok untuk lingkungan korporat.
Karakteristik Utama:  

Arsitektur: Melibatkan Supplicant (client), Authenticator (AP), dan Authentication Server (RADIUS).  
Metode EAP: EAP-TLS (sertifikat), EAP-PEAP, EAP-TTLS.  
Keunggulan:  
Kunci dinamis per pengguna.  
Kontrol akses granular dan logging untuk kepatuhan.


Kelemahan: Membutuhkan infrastruktur server dan keahlian teknis.

Alur Autentikasi:  

Client terhubung ke AP tanpa akses jaringan.  
AP memblokir semua lalu lintas kecuali EAP.  
Client dan server RADIUS melakukan autentikasi melalui EAP.  
Kunci sesi dihasilkan melalui 4-way handshake atau SAE.

Rekomendasi: Gunakan EAP-TLS untuk keamanan maksimal di lingkungan enterprise.
4.4 Handshake Process
Handshake adalah proses negosiasi kriptografi antara client (Station/STA) dan Access Point (AP) untuk membangun koneksi terenkripsi.
4.4.1 4-Way Handshake (WPA/WPA2)
4-Way Handshake adalah mekanisme empat tahap untuk autentikasi dan pembuatan kunci pada WPA/WPA2.
Tujuan:  

Memverifikasi pengetahuan Pairwise Master Key (PMK).  
Menghasilkan Pairwise Transient Key (PTK) untuk sesi unik.  
Mendistribusikan Group Temporal Key (GTK) untuk broadcast/multicast.  
Menjamin kesegaran sesi melalui nonce untuk mencegah serangan replay.

Alur Proses:  

Message 1 (AP → STA): AP mengirim ANonce (Authenticator Nonce).  
Message 2 (STA → AP): STA mengirim SNonce (Supplicant Nonce) dan MIC (Message Integrity Code). PTK dihitung menggunakan PMK, ANonce, dan SNonce.  
Message 3 (AP → STA): AP mengirim GTK yang dienkripsi dengan KEK (Key Encryption Key) dan MIC.  
Message 4 (STA → AP): STA mengirim konfirmasi pemasangan kunci dengan MIC.

Fungsi Kunci:  

PTK: Dibagi menjadi KCK (verifikasi MIC), KEK (enkripsi kunci), dan TK (enkripsi unicast).  
GTK: Untuk enkripsi broadcast/multicast.

Ilustrasi Alur:Referensi Gambar: Ilustrasi Alur 4-Way Handshake
4.4.2 PMKID
PMKID (Pairwise Master Key Identifier) adalah hash kriptografis dari PMK untuk mempercepat autentikasi.
Karakteristik:  

Dihitung: PMKID = HMAC-SHA1(PMK, "PMK Name" | MAC_AP | MAC_STA).  
Ditemukan dalam RSN IE pada frame Beacon/Probe Response.  
Memungkinkan koneksi ulang tanpa 4-way handshake penuh.

Kelemahan:  

Rentan terhadap serangan offline cracking menggunakan alat seperti hcxdumptool dan hashcat (mode 16800).  
Dapat ditangkap secara pasif tanpa interaksi client.

Rekomendasi: Gunakan kata sandi yang kuat untuk meminimalkan risiko cracking PMKID.
4.5 Jenis-Jenis Serangan pada Jaringan Wi-Fi
Jaringan Wi-Fi rentan terhadap berbagai serangan yang mengeksploitasi kelemahan protokol, cipher, atau konfigurasi.
4.5.1 Serangan Fundamental
4.5.1.1 Packet Sniffing

Deskripsi: Memantau lalu lintas jaringan secara pasif untuk menangkap data sensitif.  
Risiko: Pencurian kredensial, data pribadi, atau sesi pengguna.  
Mitigasi: Gunakan enkripsi kuat (WPA3/AES) dan HTTPS untuk aplikasi.

4.5.1.2 MAC Spoofing Attack

Deskripsi: Memalsukan alamat MAC untuk menyamar sebagai perangkat sah.  
Risiko: Akses tidak sah ke jaringan dengan filter MAC.  
Mitigasi: Gunakan autentikasi berbasis 802.1X, bukan filter MAC.

4.5.1.3 Rogue Access Point Attack

Deskripsi: Pemasangan AP tidak sah untuk mengintersepsi lalu lintas.  
Risiko: Man-in-the-middle, pencurian data.  
Mitigasi: Gunakan WIDS/WIPS untuk mendeteksi AP tidak sah.

4.5.1.4 Evil Twin Attack

Deskripsi: Membuat AP palsu dengan SSID identik untuk menipu pengguna.  
Risiko: Pencurian kredensial, man-in-the-middle.  
Mitigasi: Aktifkan PMF, edukasi pengguna untuk memverifikasi jaringan.

4.5.2 Serangan pada Protokol Keamanan
4.5.2.1 WEP

FMS Attack: Mengeksploitasi weak IVs untuk memulihkan kunci RC4.  
KoreK Attack: Versi efisien dari FMS, memerlukan lebih sedikit paket.  
PTW Attack: Memecahkan kunci WEP 104-bit dengan 20.000-40.000 paket.  
Fragmentation Attack: Mendapatkan key stream untuk injeksi paket.  
Chop-Chop Attack: Memecahkan enkripsi byte-per-byte.  
ARP Request Replay Attack: Meningkatkan IV untuk serangan statistik.  
Fake Authentication Attack: Melewati autentikasi shared key.  
Caffe Latte Attack: Memulihkan kunci WEP dari client tanpa AP.  
Hirte Attack: Mempercepat pemulihan kunci dengan fragmentasi.

Rekomendasi: Jangan gunakan WEP; migrasi ke WPA3.
4.5.2.2 WPA/WPA2-Personal (PSK)

Capture Handshake: Menangkap 4-way handshake untuk offline cracking.  
Deauthentication Attack: Memutus koneksi client untuk menangkap handshake.  
PMKID Attack: Menangkap PMKID untuk serangan offline tanpa handshake.  
Dictionary Attack: Menggunakan wordlist untuk memecahkan PSK.  
Brute Force Attack: Mencoba semua kombinasi karakter untuk PSK.  
Rainbow Table Attack: Menggunakan tabel hash pra-hitung (kurang praktis karena SSID sebagai salt).  
Evil Twin Attack: AP palsu untuk mencuri kredensial.  
KRACK: Mengeksploitasi 4-way handshake untuk mendekripsi data.

Rekomendasi: Gunakan kata sandi kuat, aktifkan PMF, dan perbarui perangkat untuk patch KRACK.
4.5.2.3 WPA/WPA2-Enterprise (802.1X)

EAP Handshake Capture: Menangkap paket EAP untuk analisis kredensial.  
MITM Attack: Menyisipkan diri antara client dan server RADIUS.  
Evil Twin Attack: AP palsu untuk mencuri kredensial enterprise.  
Downgrade Attack: Memaksa penggunaan metode autentikasi lemah.  
RADIUS Impersonation Attack: Memalsukan server RADIUS.  
Dictionary Attack: Mencoba wordlist pada hash EAP yang ditangkap.  
Brute Force Attack: Mencoba semua kombinasi untuk hash EAP.

Rekomendasi: Gunakan EAP-TLS, validasi sertifikat ketat, dan pantau aktivitas RADIUS.
4.5.2.4 WPA3-Personal (SAE)

Dragonblood Attack: Mengeksploitasi kelemahan SAE (downgrade, side-channel, DoS).  
Downgrade Attack: Memaksa koneksi ke WPA2.  
Side-Channel Attack: Menganalisis waktu atau cache untuk ekstraksi kata sandi.  
Evil Twin via Downgrade: Menggabungkan AP palsu dengan downgrade ke WPA2.  
Denial-of-Service (DoS): Membanjiri AP dengan frame SAE tidak valid.

Rekomendasi: Nonaktifkan mode transisi WPA2/WPA3, perbarui perangkat untuk patch Dragonblood.
4.5.2.5 WPS

PIN Brute Force Attack: Mencoba semua kombinasi PIN WPS (11.000 kemungkinan).  
Pixie Dust Attack: Mengeksploitasi weak random number generator pada WPS.  
Physical Access Attack (PBC): Memanfaatkan tombol WPS secara fisik.  
Null PIN Attack: Menggunakan PIN kosong pada implementasi rentan.  
Known PIN Attack: Menggunakan PIN default atau bocor.

Rekomendasi: Nonaktifkan WPS pada router modern.
4.5.2.6 Serangan Lainnya

Beacon Flooding Attack: Mengirim frame beacon palsu untuk mengganggu client.  
Authentication DoS Attack: Membanjiri AP dengan permintaan autentikasi.  
SSID Probing and Bruteforcing Attack: Mengungkap SSID tersembunyi.  
Disassociation Attack: Memutus koneksi client tanpa autentikasi ulang.  
Michael Countermeasures Exploitation Attack: Memicu blokir TKIP untuk DoS.  
EAPOL Start and Logoff Packet Injection Attack: Mengganggu autentikasi enterprise.  
Mesh Network Attacks (802.11s): Mengeksploitasi protokol routing mesh.  
WIDS/WIPS Confusion Attack: Mengelabui sistem deteksi intrusi.  
Packet Fuzzer Attack: Menguji kerentanan zero-day dengan paket tidak valid.

Rekomendasi Umum:  

Gunakan WPA3 dengan AES-GCMP dan PMF wajib.  
Nonaktifkan WPS dan mode transisi WPA2/WPA3.  
Gunakan kata sandi kuat dan perbarui perangkat secara rutin.  
Terapkan WIDS/WIPS untuk mendeteksi serangan.

