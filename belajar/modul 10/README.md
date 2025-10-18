# Modul 10: Essential Tools

## Aircrack-ng Suite (airmon-ng, airodump-ng, aireplay-ng, aircrack-ng)

- **Definisi**: Kumpulan alat open-source untuk pengujian keamanan Wi-Fi, fokus pada analisis, penyadapan, dan cracking.
- **Komponen Utama**:
  - **airmon-ng**: Mengelola mode jaringan nirkabel, mengaktifkan monitor mode.
    - Contoh: `sudo airmon-ng start wlan0` untuk mengubah wlan0 ke mode monitor (wlan0mon).
  - **airodump-ng**: Menangkap paket jaringan untuk analisis, menampilkan AP dan klien.
    - Contoh: `sudo airodump-ng --band abg wlan0mon` untuk scan 2.4/5 GHz.
  - **aireplay-ng**: Melakukan injeksi paket, seperti serangan Deauthentication.
    - Contoh: `sudo aireplay-ng --deauth 10 -a [BSSID] wlan0mon` untuk memutuskan klien.
  - **aircrack-ng**: Cracking kunci WEP/WPA-PSK menggunakan data yang dikumpulkan.
    - Contoh: `sudo aircrack-ng -w wordlist.txt capture.cap` untuk crack WPA handshake.
- **Kelebihan**: Gratis, lengkap, terintegrasi, didukung komunitas besar.
- **Kekurangan**: Memerlukan adapter Wi-Fi dengan monitor mode dan pengetahuan Linux.
- **Contoh Penggunaan**: Menguji keamanan WPA2 dengan menangkap handshake dan cracking kata sandi.

## Wireshark

- **Definisi**: Alat analisis protokol jaringan open-source untuk menangkap dan memeriksa paket data.
- **Fungsi**:
  - Menangkap paket di mode monitor untuk analisis mendalam (misalnya header 802.11).
  - Filter data berdasarkan protokol, BSSID, atau jenis frame.
- **Kelebihan**:
  - Antarmuka grafis yang ramah pengguna.
  - Mendukung berbagai protokol, termasuk Wi-Fi (802.11).
- **Kekurangan**: Memerlukan pengetahuan untuk menganalisis data, kinerja lambat pada capture besar.
- **Contoh Penggunaan**: `wireshark -i wlan0mon` untuk memantau lalu lintas Wi-Fi dan mendeteksi anomali.

## Reaver & Bully (WPS Attack)

- **Reaver**:
  - Alat untuk mengeksploitasi kerentanan WPS (Wi-Fi Protected Setup) dengan brute-force PIN.
  - Contoh: `sudo reaver -i wlan0mon -b [BSSID] -vv` untuk mencoba semua PIN WPS.
- **Bully**:
  - Alternatif Reaver, lebih ringan dan cepat, dengan algoritma brute-force yang lebih efisien.
  - Contoh: `sudo bully -b [BSSID] -c [CHANNEL] wlan0mon`.
- **Kelebihan**: Efektif untuk jaringan dengan WPS aktif (terutama WPA/WPA2 lama).
- **Kekurangan**: Tidak bekerja pada AP dengan WPS terkunci atau nonaktif, membutuhkan monitor mode.
- **Contoh Penggunaan**: Mendapatkan kata sandi WPA melalui PIN WPS dalam beberapa jam.

## Hashcat & John the Ripper

- **Hashcat**:
  - Alat cracking kata sandi berbasis GPU, mendukung WPA/WPA2 handshake.
  - Contoh: `hashcat -m 2500 capture.hccapx wordlist.txt` untuk crack handshake WPA.
  - **Kelebihan**: Cepat dengan GPU modern, mendukung berbagai algoritma.
  - **Kekurangan**: Membutuhkan hardware kuat untuk performa optimal.
- **John the Ripper**:
  - Alat cracking berbasis CPU, mendukung banyak format hash termasuk WPA.
  - Contoh: `john --format=wpapsk capture.cap` untuk crack handshake.
  - **Kelebihan**: Ringan, cocok untuk sistem tanpa GPU.
  - **Kekurangan**: Lebih lambat dibandingkan Hashcat.
- **Contoh Penggunaan**: Menggunakan wordlist atau aturan untuk crack kata sandi Wi-Fi setelah capture handshake.

## Wifite & Fluxion

- **Wifite**:
  - Alat otomatis untuk pengujian keamanan Wi-Fi, mengintegrasikan Aircrack-ng, Reaver, dan lainnya.
  - Contoh: `sudo wifite --wpa --wps` untuk menyerang jaringan WPA dengan WPS.
  - **Kelebihan**: Otomatisasi scanning, cracking, dan serangan, ramah untuk pemula.
  - **Kekurangan**: Kurang fleksibel untuk pengguna tingkat lanjut.
- **Fluxion**:
  - Alat untuk serangan social engineering, membuat AP palsu untuk mencuri kredensial.
  - Contoh: Membuat AP tiruan dengan SSID serupa untuk menipu pengguna memasukkan kata sandi.
  - **Kelebihan**: Efektif untuk mengeksploitasi kesalahan pengguna.
  - **Kekurangan**: Memerlukan keterampilan konfigurasi dan etika penggunaan.
- **Contoh Penggunaan**: Wifite untuk cracking otomatis, Fluxion untuk simulasi serangan phishing.

## Kismet & Airgraph-ng

- **Kismet**:
  - Alat untuk scanning dan analisis jaringan nirkabel secara pasif, mendukung 2.4/5/6 GHz.
  - Contoh: `sudo kismet -c wlan0mon` untuk memantau AP dan klien.
  - **Kelebihan**: Mendeteksi jaringan tersembunyi, antarmuka web modern.
  - **Kekurangan**: Konfigurasi awal rumit untuk pemula.
- **Airgraph-ng**:
  - Alat untuk memvisualisasikan hubungan AP-klien dari data Aircrack-ng atau Kismet.
  - Contoh: `airgraph-ng -i capture.cap -o graph.png` untuk membuat grafik jaringan.
  - **Kelebihan**: Visualisasi membantu analisis topologi jaringan.
  - **Kekurangan**: Memerlukan file capture yang valid.
- **Contoh Penggunaan**: Kismet untuk mendeteksi SSID tersembunyi, Airgraph-ng untuk memetakan klien.

## Wash (WPS Scanner)

- **Definisi**: Alat untuk mendeteksi AP dengan WPS aktif, bagian dari Reaver.
- **Fungsi**:
  - Memindai jaringan untuk menemukan AP yang rentan terhadap serangan WPS.
  - Contoh: `sudo wash -i wlan0mon --ignore-fcs` untuk scan AP dengan WPS.
- **Kelebihan**: Cepat mengidentifikasi target WPS, ringan.
- **Kekurangan**: Hanya efektif pada AP dengan WPS aktif, tidak mendukung WPA3.
- **Contoh Penggunaan**: Mengidentifikasi AP rentan sebelum menjalankan Reaver atau Bully.

## MDK3/MDK4

- **Definisi**: Alat untuk serangan DoS (Denial of Service) pada jaringan Wi-Fi.
- **Fungsi**:
  - Melakukan serangan seperti Deauth, Beacon Flood, atau Authentication Flood.
  - Contoh: `sudo mdk4 wlan0mon -a -w [BSSID]` untuk serangan Deauth.
- **Kelebihan**: Efektif untuk menguji ketahanan jaringan.
- **Kekurangan**: Penggunaan ilegal tanpa izin, memerlukan monitor mode.
- **Contoh Penggunaan**: Menguji respons AP terhadap serangan DoS di lab.

## Cowpatty

- **Definisi**: Alat untuk cracking WPA/WPA2 PSK menggunakan handshake atau wordlist.
- **Fungsi**:
  - Menganalisis handshake dan mencoba kata sandi dari wordlist atau tabel rainbow.
  - Contoh: `cowpatty -f wordlist.txt -r capture.cap -s [SSID]`.
- **Kelebihan**: Mendukung tabel rainbow untuk cracking cepat.
- **Kekurangan**: Lebih lambat dibandingkan Hashcat, kurang fleksibel.
- **Contoh Penggunaan**: Cracking handshake WPA dengan wordlist besar.

## Pyrit

- **Definisi**: Alat untuk cracking WPA/WPA2 dengan memanfaatkan GPU untuk prekomputasi.
- **Fungsi**:
  - Membuat database kunci PMK (Pairwise Master Key) untuk mempercepat cracking.
  - Contoh: `pyrit -r capture.cap -i wordlist.txt attack_passthrough`.
- **Kelebihan**: Cepat dengan GPU, mendukung analisis handshake massal.
- **Kekurangan**: Memerlukan konfigurasi GPU dan driver (misalnya CUDA).
- **Contoh Penggunaan**: Cracking WPA di sistem dengan GPU NVIDIA untuk performa tinggi.
