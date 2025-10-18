# Standar IEEE 802.11 (Wi-Fi)

IEEE 802.11 adalah serangkaian standar komunikasi nirkabel yang mengatur implementasi jaringan lokal nirkabel (WLAN). Standar ini lebih dikenal dengan nama Wi-Fi dan terus berkembang untuk memenuhi kebutuhan kecepatan dan kapasitas yang semakin tinggi.

## Evolusi Standar IEEE 802.11

1. **IEEE 802.11 (1997)**
   - **Kecepatan:** 1-2 Mbps
   - **Frekuensi:** 2.4 GHz
   - **Status:** Standar pertama, sudah tidak digunakan
   - **Keterangan:** Standar dasar yang menjadi fondasi pengembangan Wi-Fi selanjutnya
2. **IEEE 802.11a (1999)**
   - **Kecepatan Maksimal:** 54 Mbps
   - **Frekuensi:** 5 GHz
   - **Modulasi:** OFDM (Orthogonal Frequency Division Multiplexing)
   - **Jangkauan:** Lebih pendek dibanding 802.11b
   - **Keunggulan:**
     - Lebih sedikit interferensi karena menggunakan frekuensi 5 GHz
Kecepatan lebih tinggi
   - **Kelemahan:**
     - Jangkauan lebih pendek
     - Tidak kompatibel dengan 802.11b
     - Biaya lebih mahal
3. **IEEE 802.11b (1999)**
   - **Kecepatan Maksimal:** 11 Mbps
   - **Frekuensi:** 2.4 GHz
   - **Modulasi:** DSSS (Direct Sequence Spread Spectrum)
   - **Jangkauan:** Lebih baik dibanding 802.11a
   - **Keunggulan:**
     - Jangkauan lebih luas
     - Biaya lebih murah
     - Adopsi yang luas
   - **Kelemahan:**
     - Rentan terhadap interferensi (microwave, Bluetooth)
     - Kecepatan lebih rendah
     - Hanya 3 kanal non-overlapping (1, 6, 11)
4. **IEEE 802.11g (2003)**
   - **Kecepatan Maksimal:** 54 Mbps
   - **Frekuensi:** 2.4 GHz
   - **Modulasi:** OFDM
   - **Kompatibilitas:** Backward compatible dengan 802.11b
   - **Keunggulan:**
     - Menggabungkan kecepatan 802.11a dengan jangkauan 802.11b
     - Kompatibel dengan perangkat 802.11b
   - **Kelemahan:**
     - Masih menggunakan frekuensi 2.4 GHz yang ramai
     - Performa turun jika ada perangkat 802.11b di jaringan
5. **IEEE 802.11n (2009) - Wi-Fi 4**
   - Kecepatan Maksimal: 600 Mbps (teoritis)
   - Frekuensi: 2.4 GHz dan/atau 5 GHz (dual-band)
   - Teknologi Kunci:
     - MIMO: Multiple Input Multiple Output (hingga 4x4)
     - Channel Bonding: Menggabungkan 2 kanal (40 MHz)
     - Frame Aggregation: Menggabungkan beberapa frame data
   - Jangkauan: Hingga 70 meter indoor, 250 meter outdoor
   - Keunggulan:
     - Peningkatan kecepatan signifikan
     - Jangkauan lebih baik
     - Dual-band support
     - Backward compatible
   - Penggunaan: Masih banyak digunakan hingga saat ini
6. **IEEE 802.11ac (2013) - Wi-Fi 5**
   - Kecepatan Maksimal: 1.3 Gbps (Wave 1), 6.9 Gbps (Wave 2)
   - Frekuensi: 5 GHz saja
   - Teknologi Kunci:
     - MU-MIMO: Multi-User MIMO (hingga 8x8)
     - Channel Width: Hingga 160 MHz
     - Beamforming: Mengarahkan sinyal ke perangkat tertentu
     - Modulasi: 256-QAM
   - Keunggulan:
     - Kecepatan sangat tinggi
     - Efisiensi lebih baik untuk multiple devices
     - Cocok untuk streaming HD/4K
   - Kelemahan:
     - Hanya bekerja di 5 GHz
     - Jangkauan lebih pendek dari 2.4 GHz
7. **IEEE 802.11ax (2019) - Wi-Fi 6/6E**
   - **Kecepatan Maksimal:** 9.6 Gbps (teoritis)
   - **Frekuensi:** 2.4 GHz, 5 GHz, dan 6 GHz (Wi-Fi 6E)
   - **Teknologi Kunci:**
     - **OFDMA:** Orthogonal Frequency Division Multiple Access
     - **MU-MIMO:** 8x8 uplink dan downlink
     - **1024-QAM:** Modulasi lebih tinggi
     - **BSS Coloring:** Mengurangi interferensi
     - **TWT:** Target Wake Time (hemat baterai IoT)
   - **Keunggulan:**
     - Performa lebih baik di area padat
     - Efisiensi spektrum lebih tinggi
     - Latensi lebih rendah
     - Hemat daya untuk perangkat IoT
     - Wi-Fi 6E menambah spektrum 6 GHz
   - **Penggunaan:** Standar modern saat ini, ideal untuk smart home dan banyak perangkat
8. **IEEE 802.11be (2024) - Wi-Fi 7**
   - **Kecepatan Maksimal:** 46 Gbps (teoritis)
   - **Frekuensi:** 2.4 GHz, 5 GHz, dan 6 GHz
   - **Teknologi Kunci:**
     - **4096-QAM:** Modulasi tertinggi
     - **Multi-Link Operation (MLO):** Menggunakan multiple band sekaligus
     - **Channel Width:** Hingga 320 MHz
     - 16x16 MU-MIMO
     - Enhanced OFDMA
   - **Keunggulan:**
     - Kecepatan luar biasa tinggi
     - Latensi ultra-rendah (< 5ms)
     - Cocok untuk VR/AR, gaming, 8K streaming
     - Reliability sangat tinggi
   - **Status:** Standar terbaru, mulai tersedia di perangkat premium
   - **Penggunaan:** Aplikasi next-generation seperti metaverse, cloud gaming


## Perbandingan Ringkas

| Standar | Tahun | Frekuensi | Kecepatan Maksimal | Nama Komersial |
|:--:|:--:|:--:|:--:|:--:|
| 802.11 | 1997 | 2.4 GHz | 2 Mbps | - | 
| 802.11a | 1999 | 5 GHz | 54 Mbps | - |
| 802.11b | 1999 | 2.4 GHz | 11 Mbps | - |
| 802.11g | 2003 | 2.4 GHz | 54 Mbps | - |
| 802.11n | 2009 | 2.4/5 GHz | 600 Mbps | Wi-Fi 4 |
| 802.11ac | 2013 | 5 GHz | 6.9 Gbps | Wi-Fi 5 |
| 802.11ax | 2019 | 2.4/5/6 GHz | 9.6 Gbps | Wi-Fi 6/6E | 
| 802.11be | 2024 | 2.4/5/6 GHz | 46 Gbps | Wi-Fi 7 |

## Teknologi Kunci

### 1. MIMO (Multiple Input Multiple Output)

Menggunakan multiple antena untuk transmit dan receive data secara bersamaan, meningkatkan throughput dan reliability.

### 2. MU-MIMO (Multi-User MIMO)

Memungkinkan router berkomunikasi dengan beberapa perangkat secara simultan, bukan bergantian.

### 3. OFDM/OFDMA

- **OFDM:** Membagi kanal menjadi sub-carrier untuk transmisi paralel.
- **OFDMA:** Membagi sub-carrier untuk multiple users secara efisien.

### 4. Beamforming

Teknologi yang mengarahkan sinyal Wi-Fi langsung ke perangkat client, bukan menyebar ke segala arah.

### 5. Channel Bonding

Menggabungkan beberapa kanal frekuensi untuk meningkatkan bandwidth.

## Pemilihan Standar

**Untuk Rumah Biasa:**
- Wi-Fi 5 (802.11ac) sudah cukup
- Wi-Fi 6 (802.11ax) untuk banyak perangkat smart home

**Untuk Kantor/Area Padat:**
- Wi-Fi 6 (802.11ax) sangat direkomendasikan
- Wi-Fi 6E jika butuh spektrum tambahan

**Untuk Aplikasi High-Performance:**
- Wi-Fi 7 (802.11be) untuk VR/AR, gaming kompetitif, streaming 8K


Kesimpul
Evolusi standar IEEE 802.11 menunjukkan peningkatan dramatis dalam kecepatan, efisiensi, dan kemampuan menangani banyak perangkat. Dari 2 Mbps di 1997 hingga 46 Gbps teoritis di Wi-Fi 7, teknologi Wi-Fi terus berkembang untuk memenuhi kebutuhan konektivitas modern yang semakin kompleks.
