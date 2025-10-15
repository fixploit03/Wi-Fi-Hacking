# Reaver

![Reaver](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/reaver/img/reaver.jpg)

## Instalasi

Kali Linux:

```
sudo apt-get update
sudo apt -y install reaver aircrack-ng pixiewps
```

2. Melalui compile dari source:
   
   ```
   sudo apt-get update
   sudo apt-get install build-essential libpcap-dev git
   git clone https://github.com/t6x/reaver-wps-fork-t6x
   cd reaver-wps-fork-t6x
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
