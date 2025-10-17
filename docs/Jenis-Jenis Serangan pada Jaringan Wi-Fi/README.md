# Jenis-Jenis Serangan pada Jaringan Wi-Fi

Berikut adalah jenis-jenis serangan pada jaringan Wi-Fi:

## Serangan Fundamental

- **Packet Sniffing (Passive Monitoring):** Serangan yang melibatkan penyadapan lalu lintas jaringan Wi-Fi untuk menangkap paket data yang dikirim antara client dan AP tanpa mengganggu komunikasi.
- **MAC Spoofing Attack:** Serangan yang mengubah alamat MAC penyerang untuk menyamar sebagai client atau AP yang sah. Digunakan untuk melewati filter MAC atau mendukung serangan lain.
- **Rogue Access Point Attack:** Serangan yang membuat AP tidak sah untuk memberikan akses ke jaringan internal atau mencuri data. AP palsu dapat menggunakan SSID yang sama (Evil Twin) atau berbeda dari jaringan target.
- **Evil Twin Attack:** Serangan yang membuat AP palsu dengan SSID identik dengan jaringan target untuk menipu client agar terhubung. Merupakan subset spesifik dari Rogue AP yang fokus pada impersonation.
  
## Serangan Pada Protokol WEP

- **FMS Attack:** Serangan yang mengeksploitasi kelemahan algoritma RC4 dalam protokol WEP dengan mengumpulkan Initialization Vector (IV) lemah dari paket data yang dikirim melalui jaringan. Serangan ini, dinamakan berdasarkan Fluhrer, Mantin, dan Shamir, membutuhkan ratusan ribu hingga jutaan IV untuk memecahkan kunci WEP.
- **KoreK Attack:** Pengembangan dari FMS Attack yang lebih cepat dan efisien. Serangan ini memanfaatkan analisis statistik yang lebih canggih pada IV untuk memecahkan kunci WEP dengan jumlah IV yang jauh lebih sedikit dibandingkan FMS Attack.
- **PTW Attack:** Serangan yang sangat efisien dan menargetkan kelemahan spesifik dalam algoritma WEP. Hanya membutuhkan 20.000–50.000 IV untuk memecahkan kunci WEP, menjadikannya metode tercepat dan default di tool Aircrack-NG suite.
- **Fragmentation Attack:** Serangan yang memanipulasi fragmen paket data untuk mendapatkan informasi yang cukup guna merekonstruksi kunci WEP. Biasanya digunakan bersama serangan lain seperti Chop-Chop Attack atau ARP Request Replay Attack untuk mempercepat proses cracking.
- **Chop-Chop Attack:** Serangan yang mendekripsi satu paket WEP tanpa memerlukan kunci langsung, dengan memotong (chop) bagian dari paket dan merekonstruksi data melalui interaksi dengan Access Point (AP). Hasilnya dapat digunakan untuk serangan lanjutan atau untuk membangun kunci WEP.
- **ARP Request Replay Attack:** Serangan yang menangkap dan mengirim ulang paket ARP (Address Resolution Protocol) untuk memaksa AP menghasilkan lebih banyak IV. Hal ini mempercepat pengumpulan data untuk serangan seperti PTW Attack atau KoreK Attack.
- **Fake Authentication Attack:** Serangan yang mengelabui AP agar menerima penyerang sebagai client sah, memungkinkan injeksi paket ke jaringan meskipun penyerang tidak terhubung secara resmi. Digunakan untuk mendukung serangan seperti ARP Request Replay Attack atau Fragmentation Attack.
- **Caffe Latte Attack:** Serangan yang menargetkan client yang pernah terhubung ke jaringan WEP dengan membuat AP palsu (Evil Twin) menggunakan SSID yang sama. Penyerang menangkap data dari client untuk menghasilkan IV yang cukup untuk memecahkan kunci WEP.
- **Hirte Attack:** Varian yang lebih canggih dari Caffe Latte Attack, yang memanipulasi data dari client untuk menghasilkan IV tanpa memerlukan akses langsung ke AP asli. Serangan ini memungkinkan pemecahan kunci WEP dengan lebih efisien.

## Serangan Pada Protokol WPA/WPA2-Personal (PSK)

- **Capture Handshake:** Proses menangkap paket data 4-way handshake yang terjadi selama autentikasi antara client dan AP pada jaringan Wi-Fi WPA/WPA2-PSK. Handshake ini berisi informasi hash kata sandi yang diperlukan untuk serangan lanjutan seperti Dictionary Attack, Brute Force Attack, atau Rainbow Table Attack.
- **Deauthentication Attack:** Serangan yang bertujuan memutuskan koneksi client dari AP dengan mengirimkan paket deautentikasi palsu. Tujuannya adalah memaksa client untuk memulai ulang proses autentikasi, sehingga menghasilkan 4-way handshake baru yang dapat ditangkap oleh penyerang.
- **PMKID Attack:** Serangan yang mengeksploitasi Pairwise Master Key Identifier (PMKID) yang dikirim oleh beberapa AP dalam frame Robust Security Network (RSN) tanpa memerlukan 4-way handshake lengkap. PMKID berisi informasi hash yang dapat digunakan untuk memecahkan kata sandi WPA/WPA2-PSK.
- **Dictionary Attack:** Serangan yang mencoba memecahkan kata sandi WPA/WPA2-PSK dengan mencocokkan hash kata sandi dari handshake menggunakan daftar kata (wordlist) yang berisi kemungkinan kata sandi.
- **Brute Force Attack:** Serangan yang mencoba semua kombinasi karakter yang mungkin secara sistematis untuk memecahkan kata sandi WPA/WPA2-PSK.
- **Rainbow Table Attack:** Serangan yang memanfaatkan tabel hash yang telah dihitung sebelumnya (pre-computed) untuk mempercepat proses pemecahan kata sandi WPA/WPA2-PSK. Tabel ini berisi pasangan hash dan kata sandi yang dihasilkan berdasarkan SSID tertentu, memungkinkan penyerang untuk mencocokkan hash yang ditangkap dari jaringan Wi-Fi dengan cepat tanpa perlu melakukan perhitungan ulang secara real-time.
- **Evil Twin Attack (untuk Handshake Capture):** Serangan yang melibatkan pembuatan AP palsu dengan SSID yang sama dengan jaringan asli untuk menipu client agar terhubung. Penyerang dapat menangkap 4-way handshake, data autentikasi, atau bahkan lalu lintas jaringan client.

## Serangan Pada Protokol WPA/WPA2-Enterprise (802.1X)

- **EAP Handshake Capture:** Proses menangkap paket data dari proses autentikasi Extensible Authentication Protocol (EAP) antara client dan server autentikasi (biasanya RADIUS) dalam jaringan WPA/WPA2-Enterprise. Paket ini dapat berisi informasi seperti hash kata sandi atau kredensial yang digunakan untuk serangan lanjutan, tergantung pada metode EAP yang digunakan (misalnya, EAP-TLS, PEAP, atau EAP-TTLS).
- **MITM Attack:** Serangan yang melibatkan penyerang menyamar sebagai AP atau server autentikasi untuk mencegat komunikasi antara client dan server RADIUS. Penyerang dapat menangkap kredensial atau memanipulasi data autentikasi, terutama pada metode EAP yang rentan seperti PEAP tanpa validasi sertifikat.
- **Evil Twin Attack (untuk Credential Harvesting):** Serangan yang menciptakan AP palsu dengan SSID yang sama seperti jaringan asli untuk menipu client agar terhubung. Penyerang dapat merekam kredensial autentikasi (misalnya, username dan kata sandi) jika client tidak memvalidasi sertifikat server dengan benar atau menggunakan metode EAP yang lemah.
- **Downgrade Attack:** Serangan yang memaksa client untuk menggunakan metode autentikasi EAP yang kurang aman (misalnya, dari EAP-TLS ke MS-CHAPv2) dengan memanipulasi negosiasi protokol. Ini memungkinkan penyerang untuk menangkap kredensial dalam format yang lebih mudah di-crack.
- **RADIUS Impersonation Attack:** Serangan di mana penyerang menyamar sebagai server RADIUS untuk menerima kredensial autentikasi dari client. Ini sering dilakukan bersamaan dengan Evil Twin Attack untuk menipu client agar mengirimkan username dan kata sandi.
- **Dictionary Attack:** Serangan yang menargetkan metode EAP seperti MS-CHAPv2 atau GTC, di mana hash kata sandi yang ditangkap dari proses autentikasi dicocokkan dengan daftar kata sandi (wordlist) untuk memecahkan kredensial pengguna.
- **Brute Force Attack:** Serangan yang mencoba semua kombinasi karakter secara sistematis untuk memecahkan kata sandi pengguna, terutama pada metode EAP yang menghasilkan hash rentan seperti MS-CHAPv2. Serangan ini lebih efektif jika kata sandi pengguna lemah.

## Serangan Pada Protokol WPA3-Personal (SAE)

- **Dragonblood Attack:** Serangan ini mengeksploitasi kelemahan dalam implementasi protokol Simultaneous Authentication of Equals (SAE), atau Dragonfly Key Exchange, yang digunakan WPA3. Kelemahan ini mencakup kerentanan terhadap serangan timing, cache-based side-channel, dan kebocoran kata sandi melalui analisis respons protokol. Memungkinkan penyerang untuk memecahkan kata sandi jika implementasi SAE tidak diperbarui atau dikonfigurasi dengan buruk.
- **Downgrade Attack:** Serangan yang memanfaatkan mode transisi WPA3 (yang mendukung WPA2 untuk kompatibilitas). Penyerang memaksa perangkat WPA3 untuk beralih ke protokol WPA2-PSK yang lebih lemah dengan mengelabui client atau AP, sehingga memungkinkan serangan seperti Dictionary Attack atau Brute Force Attack pada WPA2.
- **Side-Channel Attack:** Serangan yang mengeksploitasi kebocoran informasi dari implementasi SAE, seperti waktu eksekusi, konsumsi daya, atau cache memory perangkat. Informasi ini dapat digunakan untuk mengekstrak kunci kriptografi atau mempersempit kemungkinan kata sandi, terutama pada perangkat dengan implementasi yang rentan.
- **Evil-Twin Attack Via Downgrade:** Serangan yang membuat AP palsu dengan SSID yang sama untuk menipu client WPA3 agar terhubung. Penyerang dapat menangkap data autentikasi atau memaksa client untuk menggunakan mode transisi WPA2, memungkinkan serangan lebih lanjut seperti Dictionary Attack atau Brute Force Attack.
- **Denial-of-Service (DoS):** Serangan yang mengganggu proses autentikasi WPA3 dengan membanjiri AP atau client dengan frame autentikasi SAE palsu. Hal ini dapat menyebabkan kegagalan koneksi atau memaksa perangkat untuk terus mencoba autentikasi, menghabiskan sumber daya perangkat.

## Serangan Pada Fitur WPS

- **PIN Brute Force Attack:** Serangan ini mencoba semua kemungkinan kombinasi PIN WPS (8 digit, tetapi dibagi menjadi dua bagian 4 digit) untuk mendapatkan kunci WPA/WPA2-PSK. Karena checksum pada digit terakhir, hanya sekitar 11.000 kombinasi yang diperlukan.
- **Pixie Dust Attack:** Serangan yang mengeksploitasi kelemahan pada implementasi WPS tertentu (terutama pada chipset seperti Broadcom atau Ralink) untuk mendapatkan PIN WPS langsung dari data yang dihasilkan oleh AP.
- **Physical Access Attack (Push Button Configuration):** Serangan yang memanfaatkan fitur WPS Push Button Configuration (PBC), di mana penyerang menekan tombol fisik pada AP atau client untuk memulai koneksi tanpa memasukkan PIN. Memerlukan akses fisik ke perangkat, sehingga terbatas pada skenario di mana penyerang dapat menyentuh perangkat.
- **Null PIN Attack:** Serangan yang mengeksploitasi kerentanan pada beberapa AP yang menerima PIN kosong (null PIN) atau PIN default (seperti 00000000) sebagai valid. Penyerang mencoba PIN kosong atau default untuk mendapatkan akses tanpa perlu brute force, efektif pada perangkat dengan konfigurasi WPS yang buruk.
- **Known PIN Attack:** Serangan yang menggunakan PIN WPS yang sudah diketahui, baik dari dokumentasi default perangkat, stiker pada router, atau kebocoran sebelumnya. Penyerang memasukkan PIN yang diketahui untuk langsung mendapatkan kunci WPA/WPA2-PSK tanpa perlu proses cracking tambahan.

## Serangan Lainnya

- **Beacon Flooding Attack:** Serangan yang mengirimkan frame beacon palsu untuk membuat banyak AP fiktif terlihat di perangkat client. Ini dapat mengacaukan pemindai jaringan (network scanners) atau bahkan menyebabkan kerusakan pada driver Wi-Fi client tertentu, menghasilkan Denial-of-Service (DoS) ringan.
- **Authentication Denial-of-Service (DoS) Attack:** Serangan yang mengirimkan frame autentikasi palsu ke semua AP dalam jangkauan untuk membebani mereka dengan permintaan koneksi dari client fiktif. Hal ini dapat menyebabkan AP membeku atau mereset, mengganggu konektivitas jaringan.
- **SSID Probing and Bruteforcing Attack:** Serangan yang mengirimkan probe request untuk mendeteksi SSID tersembunyi (hidden SSID) dan memverifikasi apakah AP berada dalam jangkauan pengiriman. Penyerang juga dapat melakukan bruteforce pada SSID tersembunyi dengan atau tanpa wordlist untuk menemukan nama jaringan yang benar.
- **Deauthentication and Disassociation Attack:** Serangan yang mengirimkan paket deautentikasi atau disasosiasi untuk memutuskan koneksi semua client dari AP berdasarkan lalu lintas data. Digunakan untuk mengganggu konektivitas atau memaksa client autentikasi ulang untuk menangkap data seperti handshake.
- **Michael Countermeasures Exploitation Attack:** Serangan yang mengeksploitasi fitur Michael Countermeasures pada AP yang menggunakan TKIP (WPA/WPA2). Dengan mengirimkan paket acak atau menyuntikkan duplikat pada antrean QoS lain, penyerang memicu AP untuk menutup diri selama satu menit, menyebabkan Denial-of-Service (DoS) yang efektif.
- **EAPOL Start and Logoff Packet Injection Attack:** Serangan yang membanjiri AP dengan frame EAPOL Start untuk membuat sesi autentikasi palsu, membebani AP sehingga tidak dapat menangani client sah. Alternatifnya, mengirimkan pesan EAPOL Logoff palsu untuk memutuskan koneksi client.
- **Mesh Network Attacks (IEEE 802.11s):** Serangan yang menargetkan jaringan mesh Wi-Fi (IEEE 802.11s) dengan mengganggu manajemen tautan atau rute. Teknik meliputi membanjiri tetangga dan rute, menciptakan black hole, atau mengalihkan lalu lintas jaringan.
- **WIDS/WIPS Confusion Attack:** Serangan yang mengacaukan sistem deteksi dan pencegahan intrusi nirkabel (WIDS/WIPS) dengan menghubungkan client ke beberapa node WDS (Wireless Distribution System) atau membuat AP palsu. Ini membingungkan sistem keamanan jaringan, memungkinkan penyerang untuk beroperasi tanpa terdeteksi.
- **Packet Fuzzer Attack:** Serangan yang mengirimkan paket acak atau rusak ke AP atau client untuk menguji ketahanan sistem atau menemukan kerentanan. Menggunakan berbagai sumber paket dan modifikasi, serangan ini dapat menyebabkan crash atau perilaku tak terduga. Harus dilakukan dengan hati-hati karena dapat mengganggu stabilitas jaringan.
