# Modul 12: Active Reconnaissance

## Network Scanning dengan Airodump-ng

- **Definisi**: Proses aktif untuk memindai jaringan Wi-Fi menggunakan `airodump-ng` dari suite Aircrack-ng untuk mengidentifikasi Access Point (AP) dan klien.
- **Fungsi**:
  - Menangkap Beacon Frames dan Probe Responses untuk mengumpulkan informasi seperti SSID, BSSID, channel, enkripsi, dan klien terhubung.
  - Menyimpan data ke file untuk analisis lebih lanjut.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Scan jaringan: `sudo airodump-ng wlan0mon --write output`.
  3. Fokus pada AP tertentu: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] wlan0mon`.
- **Kelebihan**: Cepat, memberikan data real-time, mendukung 2.4/5 GHz.
- **Kekurangan**: Aktif, dapat terdeteksi oleh sistem IDS/IPS.
- **Contoh Penggunaan**: Memetakan semua AP di area perkantoran untuk analisis keamanan.

## Kismet untuk Monitoring

- **Definisi**: Alat open-source untuk pemantauan jaringan Wi-Fi secara pasif dan aktif, mendukung analisis mendalam.
- **Fungsi**:
  - Menangkap data jaringan termasuk SSID tersembunyi, klien, dan aktivitas jaringan.
  - Antarmuka web untuk visualisasi data real-time.
  - Mendukung 2.4/5/6 GHz dengan adapter yang sesuai.
- **Langkah-langkah**:
  1. Jalankan Kismet: `sudo kismet -c wlan0mon`.
  2. Akses antarmuka web di `http://localhost:2501`.
  3. Ekspor data ke file `.netxml` untuk analisis lanjutan.
- **Kelebihan**: Lebih siluman dibandingkan Airodump-ng, mendeteksi jaringan tersembunyi.
- **Kekurangan**: Konfigurasi awal kompleks, membutuhkan adapter dengan monitor mode.
- **Contoh Penggunaan**: Memantau jaringan di kafe untuk mendeteksi AP dan klien tanpa interaksi aktif.

## Identifying Security Type

- **Definisi**: Proses mengidentifikasi jenis enkripsi (Open, WEP, WPA, WPA2, WPA3) yang digunakan oleh AP.
- **Teknik**:
  - Gunakan Airodump-ng: Kolom `ENC` menunjukkan enkripsi (misalnya `WPA2 CCMP`).
    - Contoh: `sudo airodump-ng wlan0mon`.
  - Gunakan Kismet untuk detail lebih lanjut (termasuk WPA3 atau WPS).
  - Analisis Beacon Frames dengan Wireshark untuk memeriksa tag keamanan (RSN, WPA).
- **Kelebihan**: Membantu menentukan kerentanan (misalnya WEP rentan, WPA3 lebih aman).
- **Kekurangan**: Tidak semua alat mendeteksi WPA3 dengan akurat tanpa pembaruan.
- **Contoh Penggunaan**: Mengidentifikasi AP dengan WEP untuk pengujian kerentanan di lab.

## Client Probing

- **Definisi**: Proses mengidentifikasi klien yang mencari jaringan (mengirim Probe Requests) untuk mengetahui SSID yang dicari dan potensi kerentanan.
- **Teknik**:
  - Gunakan Airodump-ng untuk menangkap Probe Requests: `sudo airodump-ng wlan0mon --showack`.
  - Filter klien dengan Wireshark: Gunakan filter `wlan.fc.type_subtype == 0x04` untuk Probe Requests.
  - Identifikasi SSID yang dicari klien untuk mendeteksi jaringan sebelumnya.
- **Kelebihan**: Mengungkap perilaku klien dan jaringan yang pernah terhubung.
- **Kekurangan**: Memerlukan aktivitas klien aktif, bisa memakan waktu.
- **Contoh Penggunaan**: Menemukan klien yang mencari SSID perusahaan untuk analisis keamanan.

## Channel Hopping

- **Definisi**: Teknik untuk beralih antar channel Wi-Fi (1-13 untuk 2.4 GHz, 36-165 untuk 5 GHz) agar menangkap data dari semua jaringan.
- **Teknik**:
  - Airodump-ng otomatis melakukan channel hopping: `sudo airodump-ng wlan0mon`.
  - Kismet mendukung hopping dengan konfigurasi: `ncsource=wlan0mon:hop=true`.
  - Manual hopping: `sudo iwconfig wlan0mon channel [NUMBER]`.
- **Kelebihan**: Memastikan semua AP di berbagai channel terdeteksi.
- **Kekurangan**: Dapat memperlambat capture jika terlalu banyak channel.
- **Contoh Penggunaan**: Memindai semua channel 2.4 GHz untuk menemukan AP tersembunyi.

## Capture Traffic Analysis

- **Definisi**: Proses menangkap dan menganalisis lalu lintas jaringan Wi-Fi untuk mengidentifikasi pola, kerentanan, atau aktivitas mencurigakan.
- **Teknik**:
  - Gunakan Airodump-ng untuk capture: `sudo airodump-ng --write capture wlan0mon`.
  - Analisis dengan Wireshark:
    - Buka file `.cap`: `wireshark capture.cap`.
    - Filter frame tertentu, misalnya `wlan.fc.type_subtype == 0x08` untuk Beacon Frames.
  - Periksa 4-Way Handshake untuk WPA/WPA2: Gunakan filter `eapol` di Wireshark.
  - Identifikasi protokol, alamat MAC, atau data tidak terenkripsi (jaringan Open).
- **Kelebihan**: Memberikan wawasan mendalam tentang aktivitas jaringan dan potensi serangan.
- **Kekurangan**: Memerlukan keahlian analisis dan adapter dengan monitor mode.
- **Contoh Penggunaan**: Menganalisis handshake WPA2 untuk pengujian cracking di lingkungan lab.
