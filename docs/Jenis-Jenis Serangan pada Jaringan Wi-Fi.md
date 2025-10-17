# Jenis-Jenis Serangan pada Jaringan Wi-Fi

## Serangan Pada Protokol WEP

- **FMS Attack:** Serangan yang mengeksploitasi kelemahan algoritma RC4 dalam protokol WEP dengan mengumpulkan Initialization Vector (IV) lemah dari paket data yang dikirim melalui jaringan. Serangan ini, dinamakan berdasarkan Fluhrer, Mantin, dan Shamir, membutuhkan ratusan ribu hingga jutaan IV untuk memecahkan kunci WEP.
- **KoreK Attack:** Pengembangan dari FMS Attack yang lebih cepat dan efisien. Serangan ini memanfaatkan analisis statistik yang lebih canggih pada IV untuk memecahkan kunci WEP dengan jumlah IV yang jauh lebih sedikit dibandingkan FMS Attack.
- **PTW Attack:** Serangan yang sangat efisien dan menargetkan kelemahan spesifik dalam algoritma WEP. Hanya membutuhkan 20.000–50.000 IV untuk memecahkan kunci WEP, menjadikannya metode tercepat dan default di tool Aircrack-NG suite.
- **Fragmentation Attack:** Serangan yang memanipulasi fragmen paket data untuk mendapatkan informasi yang cukup guna merekonstruksi kunci WEP. Biasanya digunakan bersama serangan lain seperti Chop-Chop atau ARP Replay untuk mempercepat proses cracking.
- **Chop-Chop Attack:** Serangan yang mendekripsi satu paket WEP tanpa memerlukan kunci langsung, dengan memotong (chop) bagian dari paket dan merekonstruksi data melalui interaksi dengan Access Point (AP). Hasilnya dapat digunakan untuk serangan lanjutan atau untuk membangun kunci WEP.
- **ARP Request Replay Attack:** Serangan yang menangkap dan mengirim ulang paket ARP (Address Resolution Protocol) untuk memaksa Access Point menghasilkan lebih banyak IV. Hal ini mempercepat pengumpulan data untuk serangan seperti PTW atau KoreK.
- **Fake Authentication Attack:** Serangan yang mengelabui Access Point agar menerima penyerang sebagai client sah, memungkinkan injeksi paket ke jaringan meskipun penyerang tidak terhubung secara resmi. Digunakan untuk mendukung serangan seperti ARP Replay atau Fragmentation Attack.
- **Caffe Latte Attack:** Serangan yang menargetkan client yang pernah terhubung ke jaringan WEP dengan membuat Access Point palsu (Evil Twin) menggunakan SSID yang sama. Penyerang menangkap data dari client untuk menghasilkan IV yang cukup untuk memecahkan kunci WEP.
- **Hirte Attack:** Varian yang lebih canggih dari Caffe Latte Attack, yang memanipulasi data dari client untuk menghasilkan IV tanpa memerlukan akses langsung ke Access Point asli. Serangan ini memungkinkan pemecahan kunci WEP dengan lebih efisien.

## Serangan Pada Protokol WPA/WPA2-PSK

- **Capture Handshake:** Proses menangkap paket data 4-way handshake yang terjadi selama autentikasi antara client dan Access Point (AP) pada jaringan Wi-Fi WPA/WPA2-PSK. Handshake ini berisi informasi hash kata sandi yang diperlukan untuk serangan lanjutan seperti Dictionary Attack, Brute Force Attack, atau Rainbow Table Attack.
- **Deauthentication Attack:** Serangan yang bertujuan memutuskan koneksi client dari Access Point (AP) dengan mengirimkan paket deautentikasi palsu. Tujuannya adalah memaksa client untuk memulai ulang proses autentikasi, sehingga menghasilkan 4-way handshake baru yang dapat ditangkap oleh penyerang.
- **PMKID Attack:** Serangan yang mengeksploitasi Pairwise Master Key Identifier (PMKID) yang dikirim oleh beberapa Access Point dalam frame Robust Security Network (RSN) tanpa memerlukan 4-way handshake lengkap. PMKID berisi informasi hash yang dapat digunakan untuk memecahkan kata sandi WPA/WPA2-PSK.
- **Dictionary Attack:** Serangan yang mencoba memecahkan kata sandi WPA/WPA2-PSK dengan mencocokkan hash kata sandi dari handshake menggunakan daftar kata (wordlist) yang berisi kemungkinan kata sandi.
- **Brute Force Attack:** Serangan yang mencoba semua kombinasi karakter yang mungkin secara sistematis untuk memecahkan kata sandi WPA/WPA2-PSK.
- **Rainbow Table Attack:** Serangan yang memanfaatkan tabel hash yang telah dihitung sebelumnya (pre-computed) untuk mempercepat proses pemecahan kata sandi WPA/WPA2-PSK. Tabel ini berisi pasangan hash dan kata sandi yang dihasilkan berdasarkan SSID tertentu, memungkinkan penyerang untuk mencocokkan hash yang ditangkap dari jaringan Wi-Fi dengan cepat tanpa perlu melakukan perhitungan ulang secara real-time.
- **Evil Twin Attack:** Serangan yang melibatkan pembuatan Access Point (AP) palsu dengan SSID yang sama dengan jaringan asli untuk menipu client agar terhubung. Penyerang dapat menangkap 4-way handshake, data autentikasi, atau bahkan lalu lintas jaringan client.
