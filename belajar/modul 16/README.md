# Modul 16: WPS Attacks

## WPS Vulnerability dan PIN

- **Definisi**: Wi-Fi Protected Setup (WPS) adalah fitur untuk menyederhanakan koneksi ke jaringan Wi-Fi, menggunakan PIN 8 digit atau tombol fisik pada Access Point (AP).
- **Kerentanan**:
  - **PIN Lemah**: PIN WPS hanya 8 digit (10.000.000 kemungkinan), dengan validasi dua bagian (4 digit pertama dan 4 digit kedua, termasuk checksum), mengurangi kombinasi menjadi ~11.000.
  - **Desain Flaw**: Protokol WPS rentan terhadap brute force karena AP mengonfirmasi kebenaran setengah PIN, mempermudah serangan.
  - **Implementasi Buruk**: Beberapa AP memiliki algoritma PIN yang dapat diprediksi (Pixie Dust).
- **Kelebihan**: Memungkinkan serangan cepat untuk mendapatkan kata sandi WPA/WPA2.
- **Kekurangan**: Tidak efektif jika WPS dinonaktifkan atau AP memiliki lockout setelah percobaan gagal.
- **Contoh Penggunaan**: Menyerang router lama dengan WPS aktif di lingkungan lab.

## Pixie Dust Attack

- **Definisi**: Serangan yang mengeksploitasi kelemahan dalam pembuatan nonce WPS pada chipset tertentu untuk mendapatkan PIN WPS secara langsung.
- **Chipset Rentan**:
  - Ralink, Realtek (beberapa model), Broadcom (beberapa model).
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Scan AP dengan WPS: `sudo wash -i wlan0mon --ignore-fcs`.
  3. Jalankan Pixie Dust dengan Reaver: `sudo reaver -i wlan0mon -b [BSSID] -c [CHANNEL] -K 1 -vv`.
  4. Jika sukses, Reaver menampilkan PIN dan kata sandi WPA/WPA2.
- **Kelebihan**: Sangat cepat (menit hingga detik), tidak memerlukan brute force penuh.
- **Kekurangan**: Hanya bekerja pada chipset rentan, memerlukan adapter dengan monitor mode.
- **Contoh Penggunaan**: Menyerang router dengan chipset Realtek untuk mendapatkan PIN WPS di lab.

## Online Brute Force dengan Reaver

- **Definisi**: Serangan yang mencoba semua kemungkinan PIN WPS secara online untuk mendapatkan kata sandi WPA/WPA2.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Identifikasi AP dengan WPS: `sudo wash -i wlan0mon --ignore-fcs`.
  3. Jalankan Reaver: `sudo reaver -i wlan0mon -b [BSSID] -c [CHANNEL] -vv -N -S`.
     - `-N`: Nonaktifkan NACK, `-S`: Gunakan small DH keys untuk kecepatan.
  4. Tunggu hingga PIN ditemukan, lalu Reaver menampilkan kata sandi WPA/WPA2.
- **Kelebihan**: Efektif untuk AP dengan WPS aktif, tidak memerlukan wordlist.
- **Kekurangan**: Lambat (jam hingga hari), terhenti jika AP memiliki WPS lockout.
- **Contoh Penggunaan**: Brute force PIN WPS pada router rumah di lingkungan lab.

## Offline Attack dengan Bully

- **Definisi**: Alternatif Reaver yang melakukan brute force PIN WPS secara offline, lebih cepat dan efisien pada beberapa AP.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Scan AP dengan WPS: `sudo wash -i wlan0mon --ignore-fcs`.
  3. Jalankan Bully: `sudo bully -b [BSSID] -c [CHANNEL] wlan0mon -v 3`.
     - `-v 3`: Verbose untuk detail proses.
  4. Bully menampilkan PIN dan kata sandi WPA/WPA2 jika sukses.
- **Kelebihan**: Lebih cepat dan ringan dibandingkan Reaver, algoritma lebih efisien.
- **Kekurangan**: Tidak mendukung Pixie Dust, terhenti jika AP memiliki lockout.
- **Contoh Penggunaan**: Menguji keamanan WPS pada AP di lab dengan Bully untuk hasil cepat.

## WPS Push Button Attack

- **Definisi**: Serangan yang mengeksploitasi fitur WPS Push Button (PBC) dengan meniru permintaan koneksi tanpa memerlukan PIN.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Identifikasi AP dengan WPS aktif: `sudo wash -i wlan0mon --ignore-fcs`.
  3. Gunakan Reaver untuk PBC: `sudo reaver -i wlan0mon -b [BSSID] -c [CHANNEL] -A -S -vv`.
     - `-A`: Mode push button (no PIN association).
  4. Tekan tombol WPS fisik pada AP (jika diperlukan) atau eksploitasi tanpa interaksi fisik.
- **Kelebihan**: Cepat jika AP rentan terhadap PBC, tidak memerlukan PIN.
- **Kekurangan**: Jarang berhasil pada AP modern, memerlukan waktu tepat (jendela WPS aktif ~2 menit).
- **Contoh Penggunaan**: Menyerang router dengan tombol WPS aktif di lingkungan lab.
