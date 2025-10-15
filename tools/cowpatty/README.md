# Cowpatty

![Cowpatty](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/cowpatty/img/cowpatty.jpg)

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

**1. Dictionary Attack (Manual/Basic):**

```
cowpatty -f [wordlist] -r [file_capture] -s [ssid] -v
```

**2. Pre-computed PMK Caching:**

1. Buat hash PMK terlebih dahulu menggunakan `genpmk`:

   ```
   genpmk -f [wordlist] -d [output] -s [ssid] -v
   ```
2. Jalankan Cowpatty:

   ```
   cowpatty -d [hash_pmk] -r [file_capture] -s [ssid] -v
   ```

## Catatan:

1. Metode Dictionary Attack (Manual/Basic):
   - Mode ini melakukan perhitungan PMK (Pairwise Master Key) secara real-time untuk setiap password dari wordlist, sehingga prosesnya sangat lambat karena harus melalui fungsi PBKDF2 dengan 4096 iterasi.
   - Cocok digunakan untuk menyerang SSID yang unik atau jarang digunakan, namun sangat bergantung pada spesifikasi hardware (CPU) yang digunakan.
2. Mode Pre-computed PMK Caching (Rainbow Table):
   - Mode ini menggunakan rainbow table berisi PMK yang telah dihitung sebelumnya, sehingga proses cracking jauh lebih cepat karena hanya melakukan pencocokan tanpa perhitungan real-time.
   - Rainbow table harus dibuat terlebih dahulu menggunakan tool seperti genpmk dengan SSID spesifik dan membutuhkan ruang penyimpanan besar, namun hanya berlaku untuk SSID tertentu sehingga tidak bersifat universal.

## Video Demonstrasi

[https://youtu.be/0zo-ZgZr5Hk?si=LIz2BgHSCtb4exY8](https://youtu.be/0zo-ZgZr5Hk?si=LIz2BgHSCtb4exY8)
