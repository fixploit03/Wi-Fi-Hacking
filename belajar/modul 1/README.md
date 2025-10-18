# Materi - 1 | Pengenalan Jaringan Wireless

## 1.1. Perbedaan Jaringan Kabel dan Nirkabel

### 1.1.1. Jaringan Kabel (Wired Network)
Jaringan yang menggunakan media fisik seperti kabel tembaga (UTP/STP) atau fiber optik untuk mentransmisikan data.

**Karakteristik:**
- Menggunakan kabel Ethernet (Cat5e, Cat6, Cat7)
- Koneksi point-to-point yang stabil
- Kecepatan transfer tinggi dan konsisten
- Area jangkauan terbatas oleh panjang kabel

### 1.1.2. Jaringan Nirkabel (Wireless Network)
Jaringan yang menggunakan gelombang radio atau infrared untuk mentransmisikan data tanpa media fisik.

**Karakteristik:**
- Menggunakan gelombang elektromagnetik (radio frequency)
- Koneksi broadcast yang fleksibel
- Kecepatan bervariasi tergantung jarak dan interferensi
- Mobilitas tinggi dalam area coverage

### 1.1.3. Perbandingan Utama

| Aspek | Kabel | Nirkabel |
|-------|-------|----------|
| **Media Transmisi** | Kabel fisik | Gelombang radio (2.4 GHz, 5 GHz, 6 GHz) |
| **Kecepatan** | Hingga 100 Gbps (Ethernet) | Hingga 9.6 Gbps (Wi-Fi 6E) |
| **Keamanan** | Lebih aman (akses fisik diperlukan) | Rentan intersepsi (sinyal tersebar) |
| **Mobilitas** | Terbatas pada panjang kabel | Tinggi dalam radius coverage |
| **Interferensi** | Minimal (crosstalk) | Tinggi (perangkat lain, obstacle) |
| **Biaya Instalasi** | Tinggi (kabel, drilling) | Rendah (hanya AP) |
| **Maintenance** | Sulit (kabel rusak/putus) | Mudah (wireless AP) |
| **Latensi** | Sangat rendah (< 1ms) | Lebih tinggi (1-30ms) |

## 1.2. Cara Kerja Komunikasi Wireless

### 1.2.1. Prinsip Dasar
Komunikasi wireless bekerja dengan mengkonversi data digital menjadi gelombang elektromagnetik, mentransmisikannya melalui udara, dan mengkonversi kembali di sisi penerima.

### 1.2.2. Komponen Utama

#### 1.2.2.1. Access Point (AP)
- Perangkat yang menghubungkan wireless client ke jaringan kabel
- Memancarkan SSID (Service Set Identifier)
- Mengatur autentikasi dan enkripsi
- Berfungsi sebagai bridge antara wireless dan wired network

#### 1.2.2.2. Wireless Client
- Perangkat end-user (laptop, smartphone, IoT)
- Memiliki wireless network adapter (NIC)
- Melakukan scanning untuk mencari AP yang tersedia
- Melakukan asosiasi dan autentikasi ke AP

#### 1.2.2.3. Wireless Controller (opsional)
- Mengelola multiple AP secara terpusat
- Mengatur roaming antar AP
- Monitoring dan management

### 1.2.3. Proses Koneksi Wireless

```
1. SCANNING
   Client → mencari sinyal AP yang tersedia (Passive/Active)
   
2. AUTHENTICATION
   Client → AP: Authentication Request
   AP → Client: Authentication Response
   
3. ASSOCIATION
   Client → AP: Association Request
   AP → Client: Association Response (MAC address exchange)
   
4. DHCP (jika diperlukan)
   Client meminta IP Address dari DHCP server
   
5. DATA TRANSFER
   Komunikasi data terenkripsi menggunakan protokol yang dipilih
```

### 1.2.4. Frekuensi dan Channel

**2.4 GHz Band:**
- 14 channel (1-14, channel 14 hanya di Jepang)
- Non-overlapping channel: 1, 6, 11
- Jangkauan lebih luas, penetrasi lebih baik
- Lebih banyak interferensi (Bluetooth, microwave, cordless phone)

**5 GHz Band:**
- 24+ channel (tergantung regulasi negara)
- Lebih banyak channel yang tidak overlap
- Kecepatan lebih tinggi
- Jangkauan lebih pendek, penetrasi lebih lemah

**6 GHz Band (Wi-Fi 6E):**
- Spectrum baru dengan lebih banyak bandwidth
- Minimal interferensi
- Hanya untuk perangkat terbaru

### 1.2.5. Standar IEEE 802.11

| Standar | Tahun | Frekuensi | Kecepatan Max | Nama Marketing |
|---------|-------|-----------|---------------|----------------|
| 802.11b | 1999 | 2.4 GHz | 11 Mbps | Wi-Fi 1 |
| 802.11a | 1999 | 5 GHz | 54 Mbps | Wi-Fi 2 |
| 802.11g | 2003 | 2.4 GHz | 54 Mbps | Wi-Fi 3 |
| 802.11n | 2009 | 2.4/5 GHz | 600 Mbps | Wi-Fi 4 |
| 802.11ac | 2013 | 5 GHz | 6.9 Gbps | Wi-Fi 5 |
| 802.11ax | 2019 | 2.4/5/6 GHz | 9.6 Gbps | Wi-Fi 6/6E |

### 1.2.6. Frame Structure
Wireless menggunakan frame 802.11 yang terdiri dari:
- **Frame Control**: informasi tipe frame
- **Duration**: durasi transmisi
- **Address Fields**: MAC address (hingga 4 address)
- **Sequence Control**: urutan fragment
- **Frame Body**: payload data
- **FCS**: Frame Check Sequence untuk error detection

## 1.3. Kelebihan dan Kelemahan Wireless Network

### 1.3.1. Kelebihan

#### 1. Mobilitas dan Fleksibilitas
- User dapat bergerak bebas dalam coverage area
- Tidak terikat dengan lokasi fisik
- Mendukung roaming antar AP

#### 2. Kemudahan Instalasi
- Tidak perlu kabel dan drilling
- Setup cepat untuk temporary network
- Ideal untuk gedung dengan arsitektur sulit

#### 3. Skalabilitas
- Mudah menambah client baru
- Tidak perlu infrastruktur kabel tambahan
- Cost-effective untuk ekspansi

#### 4. Biaya Operasional
- Instalasi awal lebih murah
- Maintenance lebih sederhana
- Relokasi perangkat mudah

#### 5. Guest Access
- Mudah menyediakan akses untuk tamu
- Isolasi jaringan guest dari internal
- Portal captive untuk autentikasi

### 1.3.2. Kelemahan

#### 1. Keamanan (CRITICAL untuk Pentesting)
- **Sinyal dapat diintersep**: siapapun dalam jangkauan dapat menangkap traffic
- **Rogue AP**: penyerang dapat membuat fake AP
- **Evil Twin Attack**: AP palsu dengan SSID sama
- **Deauthentication Attack**: memutus koneksi client
- **WEP/WPA cracking**: enkripsi lemah dapat di-crack
- **Man-in-the-Middle (MITM)**: intersepsi komunikasi
- **Wardriving**: scanning AP di area publik

#### 2. Performa dan Reliabilitas
- **Interferensi**: dari perangkat lain (microwave, Bluetooth, cordless phone)
- **Physical Obstacles**: tembok, logam, air mengurangi sinyal
- **Bandwidth Sharing**: semua client berbagi bandwidth AP
- **Distance Degradation**: kecepatan turun dengan jarak
- **Weather Impact**: hujan, kelembaban mempengaruhi propagasi sinyal

#### 3. Kapasitas Terbatas
- Jumlah client concurrent terbatas per AP (biasanya 50-250)
- Channel overlap menyebabkan collision
- Throughput menurun saat banyak client aktif

#### 4. Coverage Area
- Jangkauan terbatas (indoor: 30-50m, outdoor: 100-300m)
- Dead zones dan weak signal areas
- Perlu multiple AP untuk area luas

#### 5. Regulatory Compliance
- Regulasi frekuensi berbeda per negara
- Power output dibatasi
- Channel availability terbatas

#### 6. Latensi dan Jitter
- Latensi lebih tinggi dari kabel
- Tidak ideal untuk aplikasi real-time critical
- Jitter dapat mempengaruhi VoIP dan video

## Kesimpulan

Jaringan wireless memberikan fleksibilitas dan kemudahan yang luar biasa, namun datang dengan tantangan keamanan yang signifikan. Sebagai penetration tester, memahami fundamental cara kerja wireless, perbedaannya dengan jaringan kabel, serta kelebihan dan kelemahannya adalah fondasi penting sebelum melakukan security assessment.

> **Disclaimer:** Materi ini untuk tujuan edukasi dan ethical hacking. Selalu dapatkan izin tertulis sebelum melakukan penetration testing pada jaringan yang bukan milik Anda.
