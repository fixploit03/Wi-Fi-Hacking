# Jenis-Jenis Serangan pada Jaringan Wi-Fi

## Serangan Pada Protokol WEP

- **FMS Attack:** Serangan ini mengeksploitasi kelemahan algoritma RC4 pada WEP dengan mengumpulkan inisialisasi vektor (IV) lemah dari paket data. Membutuhkan banyak IV (ratusan ribu hingga jutaan) untuk memecahkan kunci WEP.
- **KoreK Attack:** Pengembangan dari FMS Attack yang lebih cepat. Memanfaatkan pola statistik dalam IV untuk memecahkan kunci WEP dengan jumlah IV yang lebih sedikit dibandingkan FMS.
- **PTW Attack:** Serangan efisien yang menargetkan kelemahan spesifik WEP. Hanya membutuhkan 20.000–50.000 IV untuk memecahkan kunci, menjadikannya metode tercepat dan default di Aircrack-ng.
- **Fragmentation Attack:** Memanipulasi fragmen paket untuk mendapatkan data yang cukup guna membangun kembali kunci WEP. Biasanya digunakan bersama serangan lain untuk mempercepat cracking.
- **Chop-Chop Attack:** Mendekripsi satu paket WEP tanpa kunci langsung, dengan memotong dan merekonstruksi data. Hasilnya digunakan untuk serangan lanjutan atau membangun kunci.
- **ARP Request Replay Attack:** Menangkap dan mengirim ulang paket ARP untuk memaksa access point menghasilkan lebih banyak IV. Mempercepat pengumpulan data untuk serangan seperti PTW atau KoreK.
- **Fake Authentication Attack:** Mengelabui access point agar menerima penyerang sebagai klien sah, memungkinkan injeksi paket meskipun tidak terhubung resmi ke jaringan. Digunakan untuk mendukung serangan lain seperti ARP Replay.
- **Caffe Latte Attack:** Menargetkan klien yang pernah terhubung ke jaringan WEP dengan membuat access point palsu. Menangkap data dari klien untuk menghasilkan IV dan memecahkan kunci WEP.
- **Hirte Attack:** Varian dari Caffe Latte yang lebih canggih, memanipulasi data dari klien untuk menghasilkan IV, memungkinkan pemecahan kunci WEP tanpa akses langsung ke access point.

## Serangan Pada Protokol WPA/WPA2-PSK

- **Capture Handshake:** Langkah awal untuk menangkap 4-way handshake dari proses autentikasi antara client dan Access Point (AP). Data ini diperlukan untuk serangan seperti Dictionary, Brute Force, atau Rainbow Table. Biasanya dilakukan dengan tool `airodump-ng` untuk merekam paket jaringan.
- **Deauthentication Attack:** Bukan serangan langsung untuk memecahkan kunci, tetapi digunakan untuk memaksa client terputus dari jaringan, sehingga memicu 4-way handshake baru yang dapat ditangkap. Dilakukan dengan tool `aireplay-ng` untuk mengumpulkan data yang diperlukan untuk Dictionary atau Brute Force Attack.
- **PMKID Attack:** Serangan yang mengeksploitasi informasi PMKID (Pairwise Master Key Identifier) yang dikirim oleh beberapa Access Point (AP) dalam frame RSN. Tool `hcxdumptool` dapat menangkap PMKID tanpa perlu 4-way handshake, lalu mencoba memecahnya menggunakan tool `hashcat`. Lebih cepat daripada menunggu handshake, tetapi tidak semua router rentan.
- **Dictionary Attack:** Serangan ini mencoba memecahkan kata sandi WPA/WPA2-PSK dengan menggunakan daftar kata (wordlist) yang berisi kemungkinan kata sandi. Aircrack-ng menangkap 4-way handshake dari proses autentikasi klien dan access point, lalu mencocokkan hash kunci dengan kata sandi dari wordlist. Keberhasilan bergantung pada kualitas wordlist dan kekuatan kata sandi.
- **Brute Force Attack:** Mirip dengan Dictionary Attack, tetapi mencoba semua kombinasi karakter yang mungkin secara sistematis. Aircrack-ng dapat melakukan ini dengan alat seperti crunch untuk menghasilkan kombinasi kata sandi. Serangan ini sangat lambat dan hanya efektif untuk kata sandi pendek atau sederhana.
- **Rainbow Table Attack:** Menggunakan tabel hash pra-komputasi untuk mempercepat pemecahan kata sandi WPA/WPA2-PSK berdasarkan SSID tertentu. Meskipun efektif untuk SSID umum, serangan ini lebih sering digunakan dengan alat seperti coWPAtty atau hashcat, tetapi dapat diintegrasikan dengan data dari Aircrack-ng.
- **Evil Twin Attack:** Membuat access point palsu dengan SSID yang sama untuk menipu klien agar terhubung, memungkinkan penyerang menangkap 4-way handshake atau data autentikasi lainnya. Digunakan untuk mendukung Dictionary atau Brute Force Attack dengan Aircrack-ng.
