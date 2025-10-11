# Cowpatty

![cowpatty](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/cowpatty/img/cowpatty%20logo.jpg)

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

Jalankan Cowpatty:

```
cowpatty -f [wordlist] -r [file_capture] -s [ssid] -v
```

### 2. Pre-computed PMK Caching

1. Buat hash PMK terlebih dahulu menggunakan `genpmk`:

   ```
   genpmk -f [wordlist] -d [output] -s [ssid] -v
   ```
2. Jalankan Cowpatty:

   ```
   cowpatty -d [hash_pmk] -r [file_capture] -s [ssid] -v
   ```

## Video Demonstrasi

Link: [https://youtu.be/0zo-ZgZr5Hk?si=LIz2BgHSCtb4exY8](https://youtu.be/0zo-ZgZr5Hk?si=LIz2BgHSCtb4exY8)
