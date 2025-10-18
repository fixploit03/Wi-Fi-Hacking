# Modul 15: WPA/WPA2 PSK Attacks

## Capturing 4-Way Handshake

- **Definisi**: Proses menangkap 4-Way Handshake, yaitu pertukaran empat pesan antara klien dan Access Point (AP) untuk menghasilkan kunci enkripsi WPA/WPA2.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Scan jaringan: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] --write handshake wlan0mon`.
  3. Tunggu klien terhubung atau lakukan Deauthentication Attack untuk memicu handshake.
  4. Verifikasi handshake dengan: `sudo aircrack-ng handshake-01.cap` (lihat output “WPA handshake”).
  5. (Opsional) Gunakan Wireshark dengan filter `eapol` untuk mengonfirmasi keberadaan handshake.
- **Kelebihan**: Handshake cukup untuk cracking offline tanpa perlu koneksi jaringan.
- **Kekurangan**: Memerlukan klien aktif atau serangan deauth untuk memicu handshake.
- **Contoh Penggunaan**: Menangkap handshake WPA2 di jaringan lab untuk pengujian keamanan.

## Deauthentication Attack

- **Definisi**: Serangan yang mengirimkan Deauthentication Frames untuk memutuskan klien dari AP, memaksa reconnection dan menghasilkan 4-Way Handshake.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Identifikasi klien: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] wlan0mon`.
  3. Kirim deauth: `sudo aireplay-ng --deauth 10 -a [BSSID] -c [CLIENT_MAC] wlan0mon` atau gunakan `-c FF:FF:FF:FF:FF:FF` untuk semua klien.
  4. Tangkap handshake dengan Airodump-ng secara bersamaan.
- **Kelebihan**: Efektif memicu handshake tanpa menunggu aktivitas klien.
- **Kekurangan**: Dapat terdeteksi oleh IDS/IPS, ilegal tanpa izin.
- **Contoh Penggunaan**: Memaksa klien reconnect di jaringan lab untuk menangkap handshake.

## Dictionary Attack

- **Definisi**: Serangan yang mencoba kata sandi dari daftar kata (wordlist) untuk memecahkan kunci WPA/WPA2 PSK dari handshake.
- **Langkah-langkah**:
  1. Tangkap handshake menggunakan Airodump-ng.
  2. Gunakan alat seperti Aircrack-ng: `sudo aircrack-ng -w wordlist.txt -b [BSSID] handshake-01.cap`.
  3. Pilih wordlist berkualitas (misalnya `rockyou.txt` atau custom wordlist berdasarkan target).
- **Kelebihan**: Cepat jika kata sandi ada dalam wordlist, hemat sumber daya.
- **Kekurangan**: Tidak efektif jika kata sandi kompleks atau tidak ada di wordlist.
- **Contoh Penggunaan**: Mencoba kata sandi umum pada handshake WPA2 di lingkungan lab.

## Brute Force Attack

- **Definisi**: Serangan yang mencoba semua kombinasi kata sandi yang mungkin untuk memecahkan kunci WPA/WPA2 PSK.
- **Langkah-langkah**:
  1. Tangkap handshake dengan Airodump-ng.
  2. Gunakan alat seperti Hashcat: `hashcat -m 2500 handshake.hccapx -a 3 ?a?a?a?a?a?a?a?a`.
     - `-a 3` untuk brute force, `?a` untuk semua karakter (huruf, angka, simbol).
  3. Batasi panjang/karakter untuk mengurangi waktu (misalnya 8 karakter).
- **Kelebihan**: Dapat menemukan kata sandi kompleks yang tidak ada di wordlist.
- **Kekurangan**: Sangat lambat, memerlukan GPU kuat dan waktu lama (bertahun-tahun untuk kata sandi panjang).
- **Contoh Penggunaan**: Brute force kata sandi 8 karakter di lab dengan GPU NVIDIA.

## Rainbow Table Attack

- **Definisi**: Serangan yang menggunakan tabel prekomputasi (rainbow tables) untuk mempercepat cracking WPA/WPA2 PSK dengan menghitung PMK (Pairwise Master Key) sebelumnya.
- **Langkah-langkah**:
  1. Tangkap handshake dengan Airodump-ng.
  2. Buat tabel rainbow dengan alat seperti `pyrit`: `pyrit -e [SSID] -i wordlist.txt create_essid`.
  3. Crack dengan Cowpatty: `cowpatty -r handshake.cap -d rainbow_table -s [SSID]`.
  4. (Alternatif) Gunakan Pyrit untuk cracking: `pyrit -r handshake.cap attack_db`.
- **Kelebihan**: Sangat cepat jika tabel untuk SSID sudah ada.
- **Kekurangan**: Membutuhkan penyimpanan besar untuk tabel, hanya efektif untuk SSID spesifik.
- **Contoh Penggunaan**: Cracking WPA dengan tabel rainbow untuk SSID umum di lab.

## Cracking dengan Aircrack-ng, Hashcat, John

- **Aircrack-ng**:
  - **Fungsi**: Cracking WPA/WPA2 PSK menggunakan handshake dan wordlist.
  - **Contoh**: `sudo aircrack-ng -w wordlist.txt -b [BSSID] handshake-01.cap`.
  - **Kelebihan**: Mudah digunakan, terintegrasi dengan suite Aircrack-ng.
  - **Kekurangan**: Lebih lambat dibandingkan Hashcat, tidak mendukung GPU.
- **Hashcat**:
  - **Fungsi**: Cracking berbasis GPU, mendukung dictionary dan brute force.
  - **Contoh**: 
    1. Konversi handshake: `cap2hccapx handshake.cap handshake.hccapx`.
    2. Crack: `hashcat -m 2500 handshake.hccapx wordlist.txt`.
  - **Kelebihan**: Cepat dengan GPU, fleksibel untuk berbagai serangan.
  - **Kekurangan**: Memerlukan GPU dan konversi file handshake.
- **John the Ripper**:
  - **Fungsi**: Cracking berbasis CPU, mendukung WPA/WPA2 PSK.
  - **Contoh**: `john --format=wpapsk handshake.cap --wordlist=wordlist.txt`.
  - **Kelebihan**: Ringan, cocok untuk sistem tanpa GPU.
  - **Kekurangan**: Lebih lambat dibandingkan Hashcat.
- **Contoh Penggunaan**: Menggunakan Hashcat untuk cracking cepat di lab dengan GPU RTX.

## PMKID Attack (Hashcat)

- **Definisi**: Serangan yang mengeksploitasi PMKID (Pairwise Master Key Identifier) dari AP WPA2 tanpa memerlukan klien atau 4-Way Handshake.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Tangkap PMKID: `sudo hcxpcapngtool -o pmkid.hc22000 -E wordlist handshake.cap`.
     - Alternatif: Gunakan `hcxdumptool`: `sudo hcxdumptool -i wlan0mon -o capture.pcapng --enable_status=1`.
  3. Crack dengan Hashcat: `hashcat -m 16800 pmkid.hc22000 wordlist.txt`.
- **Kelebihan**: Tidak memerlukan klien aktif, lebih siluman dibandingkan deauth.
- **Kekurangan**: Hanya bekerja pada AP yang mengirim PMKID (tidak semua AP rentan).
- **Contoh Penggunaan**: Menyerang AP WPA2 di lab tanpa klien untuk mendapatkan kata sandi.
