# Modul 13: Wireless Survey

## Site Survey Methodology

- **Definisi**: Proses evaluasi lingkungan fisik dan RF untuk merencanakan, mengoptimalkan, atau memecahkan masalah jaringan Wi-Fi.
- **Metodologi**:
  1. **Perencanaan**: Tentukan tujuan (misalnya cakupan, kapasitas, atau keamanan) dan kumpulkan peta lokasi.
  2. **Pengumpulan Data**:
     - Gunakan alat seperti NetSpot, Ekahau, atau Airodump-ng.
     - Catat lokasi AP, klien, dan potensi interferensi.
  3. **Analisis**: Evaluasi kekuatan sinyal, interferensi, dan kapasitas jaringan.
  4. **Dokumentasi**: Buat laporan dengan peta cakupan dan rekomendasi.
- **Jenis Survey**:
  - **Pasif**: Menangkap sinyal tanpa terhubung (misalnya dengan Kismet).
  - **Aktif**: Mengukur performa saat terhubung ke AP (misalnya dengan iPerf).
- **Kelebihan**: Memastikan cakupan optimal dan performa jaringan.
- **Kekurangan**: Memerlukan waktu dan peralatan khusus.
- **Contoh Penggunaan**: Merancang jaringan Wi-Fi untuk kantor dengan banyak pengguna.

## Signal Strength Analysis (RSSI, SNR)

- **RSSI (Received Signal Strength Indicator)**:
  - **Definisi**: Ukuran kekuatan sinyal RF yang diterima, dalam dBm (misalnya -50 dBm lebih kuat daripada -80 dBm).
  - **Interpretasi**:
    - -30 hingga -50 dBm: Sangat baik (dekat AP).
    - -50 hingga -70 dBm: Baik (cakupan normal).
    - -70 hingga -90 dBm: Lemah (potensi gangguan).
    - < -90 dBm: Tidak dapat diandalkan.
  - **Alat**: Airodump-ng (`PWR` menunjukkan RSSI), NetSpot, atau Wi-Fi Analyzer.
- **SNR (Signal-to-Noise Ratio)**:
  - **Definisi**: Rasio kekuatan sinyal terhadap kebisingan latar belakang, dalam dB.
  - **Interpretasi**:
    - > 40 dB: Luar biasa.
    - 25-40 dB: Baik.
    - 10-25 dB: Rendah, potensi gangguan.
    - < 10 dB: Tidak stabil.
  - **Rumus**: SNR = RSSI - Noise Floor (misalnya, -50 dBm - (-90 dBm) = 40 dB).
- **Contoh Penggunaan**: Menganalisis RSSI di Airodump-ng untuk menentukan posisi AP optimal.

## Coverage Mapping

- **Definisi**: Proses memetakan area cakupan sinyal Wi-Fi untuk mengidentifikasi zona kuat dan lemah.
- **Teknik**:
  - Gunakan alat seperti Ekahau, NetSpot, atau HeatMapper.
  - Impor denah lantai, lalu lakukan pengukuran dengan berjalan di area (walk-through survey).
  - Catat RSSI dan SNR di setiap titik untuk membuat heatmap.
- **Langkah-langkah**:
  1. Siapkan denah lokasi.
  2. Gunakan alat survey: `sudo airodump-ng wlan0mon` atau NetSpot dengan GPS.
  3. Visualisasikan data dalam heatmap (warna hijau untuk sinyal kuat, merah untuk lemah).
- **Kelebihan**: Membantu optimasi penempatan AP dan mengurangi zona mati.
- **Kekurangan**: Memerlukan waktu dan alat khusus untuk akurasi tinggi.
- **Contoh Penggunaan**: Membuat peta cakupan Wi-Fi di gudang untuk memastikan koneksi IoT stabil.

## Interference Detection

- **Definisi**: Mengidentifikasi sumber gangguan RF yang mengurangi performa jaringan Wi-Fi.
- **Sumber Interferensi**:
  - **Co-Channel Interference**: AP di channel yang sama (misalnya channel 1, 6, 11 di 2.4 GHz).
  - **Adjacent Channel Interference**: AP di channel berdekatan (misalnya channel 2 dan 3).
  - **Non-Wi-Fi Interference**: Perangkat seperti microwave, Bluetooth, atau kamera nirkabel.
- **Teknik**:
  - Gunakan Kismet atau Airodump-ng untuk melihat channel yang digunakan: `sudo airodump-ng --band abg wlan0mon`.
  - Gunakan spectrum analyzer (misalnya Wi-Spy) untuk mendeteksi non-Wi-Fi interference.
  - Analisis SNR rendah di Wireshark atau NetSpot untuk mengidentifikasi gangguan.
- **Solusi**:
  - Pindah ke channel tanpa tumpang tindih (1, 6, 11 untuk 2.4 GHz; 36, 40, 44 untuk 5 GHz).
  - Kurangi lebar channel (misalnya 20 MHz alih-alih 40 MHz).
- **Contoh Penggunaan**: Mendeteksi interferensi microwave di kantor yang menyebabkan putusnya koneksi.

## Rogue AP Detection

- **Definisi**: Mengidentifikasi Access Point tidak sah yang dapat digunakan untuk serangan seperti Evil Twin atau phishing.
- **Teknik**:
  - Gunakan Airodump-ng untuk mendeteksi AP dengan SSID mencurigakan: `sudo airodump-ng wlan0mon`.
  - Gunakan Kismet untuk memantau BSSID dan membandingkan dengan daftar AP resmi.
  - Periksa enkripsi (misalnya AP dengan SSID perusahaan tapi Open/WEP).
  - Analisis MAC address untuk mendeteksi vendor tidak dikenal: `macchanger --show [MAC]`.
- **Tanda Rogue AP**:
  - SSID mirip dengan jaringan resmi (misalnya "KantorWiFi" vs "KantorWifi").
  - Channel atau enkripsi tidak sesuai dengan standar perusahaan.
  - Lokasi fisik tidak diketahui (gunakan GPS di Kismet/Wigle.net).
- **Kelebihan**: Mencegah serangan phishing atau penyadapan data.
- **Kekurangan**: Memerlukan daftar AP resmi untuk perbandingan, deteksi manual memakan waktu.
- **Contoh Penggunaan**: Mendeteksi AP palsu di kafe yang meniru SSID resmi untuk mencuri kredensial.
