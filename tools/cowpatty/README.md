# Cowpatty

![cowpatty](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/cowpatty/img/cowpatty%20logo.jpg)

[Cowpatty](https://www.willhackforsushi.com/?page_id=50) adalah tool command-line (CLI) untuk melakukan [dictionary attack](https://www.asdf.id/definisi-dictionary-attack-adalah/) pada [WPA/WPA2-PSK](https://gudangssl.id/blog/wpa2-psk-adalah/). Tool ini memproses [4-way handshake](https://mrncciew.com/2014/08/19/cwsp-4-way-handshake/) yang sudah ditangkap, menghitung [PMK](https://documentation.meraki.com/MR/Wi-Fi_Basics_and_Best_Practices/Pairwise_Master_Key_and_Opportunistic_Key_Caching_-_PMK_and_OKC) menggunakan
[PBKDF2](https://en.wikipedia.org/wiki/PBKDF2) dari setiap kandidat password pada wordlist, lalu memverifikasi [MIC](https://course-net.com/blog/temporal-key-integrity-protocol/) untuk menentukan kecocokan. Cowpatty banyak dipakai oleh penetration tester dan security auditor, kinerjanya umumnya terbatas oleh kecepatan komputasi PBKDF2, sehingga teknik seperti [rainbow tables](https://en.wikipedia.org/wiki/Rainbow_table) atau precomputed PMK sering dipakai untuk mempercepat proses.

## Instalasi

Kali Linux:

1. Menggunakan packet manager (`apt`):

   ```
   sudo apt-get update
   sudo apt-get install cowpatty
   ```

2. Melalui compile dari source:
   
   ```
   sudo apt-get update
   sudo apt-get install libssl-dev build-essential git
   git clone https://github.com/joswr1ght/cowpatty.git
   cd cowpatty
   make
   sudo make install
   ```

## Penggunaan

### 1. Dictionary Attack (Manual/Basic)

Dictionary Attack (Manual/Basic) adalah metode baku dalam cracking WPA/WPA2-PSK di mana alat seperti Cowpatty akan memproses handshake yang ditangkap dengan membandingkannya secara langsung ke setiap kata sandi dalam wordlist. Dalam proses ini, untuk setiap kata sandi yang diuji, Cowpatty harus melakukan perhitungan matematis yang sangat intensif (fungsi PBKDF2) untuk menghasilkan Pairwise Master Key (PMK) baru dengan menggabungkan kata sandi dan SSID target. Karena perhitungan PMK ini memakan banyak sumber daya CPU dan harus diulang miliaran kali untuk wordlist besar, metode dasar ini menjadi sangat lambat dan tidak efisien.

Caranya:

```
cowpatty -f [wordlist] -r [file_capture] -s [ssid] -v
```

### 2. Pre-computed PMK Caching

Pre-computed PMK Caching adalah teknik yang dirancang untuk mengatasi kelemahan kecepatan tersebut. Metode ini menggunakan alat pendamping Cowpatty, yaitu genpmk, untuk menghitung semua kemungkinan PMK dari sebuah wordlist dan satu SSID target tertentu terlebih dahulu. Hasil dari seluruh perhitungan PMK yang intensif ini kemudian disimpan dalam sebuah file cache berukuran besar di disk. Ketika Cowpatty dijalankan, ia tidak perlu lagi menghitung PMK dari awal, Cowpatty hanya membaca dan membandingkan hash yang sudah disimpan dalam cache tersebut dengan handshake yang ditangkap. Akibatnya, fase cracking menjadi jauh lebih cepat karena bagian perhitungan yang paling memberatkan sudah diselesaikan sebelumnya. Meskipun membutuhkan ruang penyimpanan yang besar dan hanya berlaku untuk satu SSID, metode ini sangat diandalkan untuk pengujian berulang pada jaringan yang sama.

Caranya:

1. Buat hash pmk pake terlebih dahulu menggunakan `genpmk`:

   ```
   genpmk -f [wordlist] -d [output] -s [ssid] -v
   ```
2. Jalankan:

   ```
   cowpatty -r [hash_pmk] -r [file_capture] -s [ssid] -v
   ```

## Demonstrasi

Link: [https://youtu.be/0zo-ZgZr5Hk?si=LIz2BgHSCtb4exY8](https://youtu.be/0zo-ZgZr5Hk?si=LIz2BgHSCtb4exY8)
