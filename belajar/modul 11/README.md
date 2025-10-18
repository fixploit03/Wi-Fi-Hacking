# Modul 11: Passive Reconnaissance

## Wardriving Concepts

- **Definisi**: Proses mengemudi (atau berjalan) di suatu area untuk memetakan jaringan Wi-Fi menggunakan perangkat seperti laptop, smartphone, atau Raspberry Pi dengan adapter Wi-Fi.
- **Tujuan**:
  - Mengumpulkan informasi tentang Access Point (AP) seperti SSID, BSSID, channel, dan jenis enkripsi.
  - Mengidentifikasi jaringan rentan untuk pengujian keamanan (dengan izin).
- **Alat yang Digunakan**:
  - Adapter Wi-Fi dengan monitor mode (misalnya Alfa AWUS036NHA).
  - Software seperti Kismet, Airodump-ng, atau NetSpot.
  - GPS untuk mencatat lokasi geografis AP.
- **Kelebihan**: Tidak mengirimkan paket, sehingga sulit dideteksi.
- **Kekurangan**: Memerlukan peralatan khusus dan waktu untuk menjelajahi area.
- **Etika**: Hanya lakukan di jaringan yang diizinkan atau untuk tujuan penelitian legal.
- **Contoh Penggunaan**: Memetakan jaringan Wi-Fi di kampus untuk analisis keamanan.

## Wigle.net dan Database Wi-Fi

- **Wigle.net**:
  - **Definisi**: Database online global untuk menyimpan dan memetakan data jaringan Wi-Fi yang dikumpulkan melalui wardriving.
  - **Fungsi**:
    - Pengguna mengunggah data AP (SSID, BSSID, lokasi GPS, enkripsi) dari alat seperti Kismet atau Airodump-ng.
    - Menyediakan peta interaktif untuk melihat distribusi jaringan Wi-Fi.
  - **Cara Penggunaan**:
    - Ekspor data dari Kismet (`*.netxml`) atau Airodump-ng (`*.csv`) ke Wigle.net.
    - Gunakan aplikasi Wigle WiFi Wardriving (Android/iOS) untuk pengumpulan langsung.
  - **Kelebihan**: Komunitas besar, gratis, dan mendukung analisis tren jaringan.
  - **Kekurangan**: Data publik dapat disalahgunakan, memerlukan akun untuk unggah.
- **Contoh Penggunaan**: Mengunggah data wardriving untuk memetakan kerentanan WEP di area tertentu.

## Network Discovery tanpa Terdeteksi

- **Definisi**: Proses mengidentifikasi jaringan Wi-Fi tanpa mengirimkan paket aktif (seperti Probe Request), sehingga tidak terdeteksi oleh sistem keamanan.
- **Teknik**:
  - Gunakan **monitor mode** untuk menangkap Beacon Frames dan Probe Responses.
  - Alat: Kismet atau Airodump-ng dalam mode pasif.
    - Contoh: `sudo airodump-ng wlan0mon --write output` untuk capture tanpa interaksi.
  - Nonaktifkan pengiriman Probe Request di perangkat: `sudo rfkill block wifi; sudo airmon-ng start wlan0`.
- **Kelebihan**: Minim jejak, cocok untuk pengujian siluman.
- **Kekurangan**: Membutuhkan waktu lebih lama dibandingkan scanning aktif, tidak mendeteksi klien yang tidak aktif.
- **Contoh Penggunaan**: Mengidentifikasi semua AP di gedung tanpa memicu IDS (Intrusion Detection System).

## SSID dan Hidden Network Discovery

- **SSID Discovery**:
  - SSID (Service Set Identifier) diumumkan melalui Beacon Frames oleh AP.
  - Alat seperti Airodump-ng (`sudo airodump-ng wlan0mon`) menampilkan SSID, channel, dan enkripsi.
- **Hidden Network Discovery**:
  - **Definisi**: Jaringan dengan SSID disembunyikan (tidak diumumkan di Beacon Frames).
  - **Teknik**:
    1. Gunakan Airodump-ng untuk mendeteksi AP dengan SSID kosong: `<HIDDEN>` di kolom ESSID.
    2. Tunggu klien terhubung untuk menangkap Probe Request yang mengungkap SSID.
    3. Alternatif: Kirim Deauth Frame (etika hati-hati) untuk memaksa klien mengirim Probe Request.
       - Contoh: `sudo aireplay-ng --deauth 5 -a [BSSID] wlan0mon`.
  - **Alat**: Kismet atau Wireshark untuk analisis mendalam.
- **Kelebihan**: Mengungkap jaringan tersembunyi yang sering dianggap aman.
- **Kekurangan**: Memerlukan aktivitas klien, serangan Deauth berisiko terdeteksi.
- **Contoh Penggunaan**: Mengungkap SSID tersembunyi di jaringan kantor untuk pengujian keamanan.

## Client Identification

- **Definisi**: Proses mengidentifikasi perangkat klien yang terhubung ke AP, termasuk alamat MAC, vendor, dan aktivitas jaringan.
- **Teknik**:
  - Gunakan Airodump-ng untuk menangkap klien: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] wlan0mon`.
    - Output menunjukkan MAC klien, AP terkait, dan data rate.
  - Identifikasi vendor MAC menggunakan database OUI: `macchanger --show [MAC]` atau situs seperti macvendors.com.
  - Analisis Probe Request untuk melihat SSID yang dicari klien (mengungkap jaringan sebelumnya).
- **Kelebihan**: Membantu memetakan perangkat aktif dan potensi kerentanan (misalnya klien lama dengan WEP).
- **Kekurangan**: Hanya mendeteksi klien aktif, memerlukan monitor mode.
- **Contoh Penggunaan**: Mengidentifikasi perangkat IoT di jaringan rumah untuk mengevaluasi keamanan.
