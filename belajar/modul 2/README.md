# Modul 2: Standar dan Protokol Wi-Fi

## Standar IEEE 802.11 (a/b/g/n/ac/ax/be)

IEEE 802.11 adalah kumpulan standar untuk komunikasi nirkabel yang dikenal sebagai Wi-Fi. Berikut adalah standar utama yang umum digunakan:

- **802.11a**: Diperkenalkan pada 1999, menggunakan pita frekuensi 5 GHz, kecepatan hingga 54 Mbps, jangkauan lebih pendek dibandingkan 2.4 GHz karena frekuensi lebih tinggi.
- **802.11b**: Dirilis pada 1999, menggunakan pita 2.4 GHz, kecepatan hingga 11 Mbps, jangkauan lebih luas tetapi rentan terhadap interferensi (misalnya dari microwave atau telepon nirkabel).
- **802.11g**: Diperkenalkan pada 2003, menggunakan pita 2.4 GHz, kecepatan hingga 54 Mbps, kompatibel dengan 802.11b.
- **802.11n**: Dirilis pada 2009, mendukung pita 2.4 GHz dan 5 GHz, kecepatan hingga 600 Mbps dengan teknologi MIMO (Multiple Input Multiple Output), meningkatkan jangkauan dan keandalan.
- **802.11ac**: Diperkenalkan pada 2013, menggunakan pita 5 GHz, kecepatan hingga 1.3 Gbps (atau lebih dengan channel bonding), mendukung MU-MIMO (Multi-User MIMO).
- **802.11ax (Wi-Fi 6)**: Dirilis pada 2019, mendukung pita 2.4 GHz, 5 GHz, dan 6 GHz (Wi-Fi 6E), kecepatan hingga 9.6 Gbps, efisiensi lebih baik untuk perangkat padat melalui teknologi OFDMA dan TWT (Target Wake Time).
- **802.11be (Wi-Fi 7)**: Dirilis pada 2024, mendukung pita 2.4 GHz, 5 GHz, dan 6 GHz, kecepatan hingga 46 Gbps, menggunakan channel lebih lebar (hingga 320 MHz) dan teknologi Multi-Link Operation (MLO) untuk latensi lebih rendah.

## Perbandingan Kecepatan, Range, dan Karakteristik

| Standar     | Frekuensi       | Kecepatan Maksimum | Jangkauan | Karakteristik Utama                          |
|-------------|-----------------|--------------------|-----------|----------------------------------------------|
| 802.11a     | 5 GHz           | 54 Mbps            | Pendek    | Kurang interferensi, penetrasi dinding buruk |
| 802.11b     | 2.4 GHz         | 11 Mbps            | Luas      | Rentan interferensi, kecepatan rendah        |
| 802.11g     | 2.4 GHz         | 54 Mbps            | Luas      | Kompatibel dengan 802.11b, interferensi tinggi |
| 802.11n     | 2.4/5 GHz       | 600 Mbps           | Sedang    | MIMO, jangkauan lebih baik                   |
| 802.11ac    | 5 GHz           | 1.3 Gbps+          | Sedang    | MU-MIMO, kecepatan tinggi                    |
| 802.11ax    | 2.4/5/6 GHz     | 9.6 Gbps           | Sedang    | OFDMA, TWT, efisiensi tinggi                 |
| 802.11be    | 2.4/5/6 GHz     | 46 Gbps            | Sedang    | MLO, channel 320 MHz, latensi sangat rendah  |

## Frekuensi 2.4 GHz, 5 GHz, dan 6 GHz

- **2.4 GHz**:
  - **Kelebihan**: Jangkauan lebih luas, penetrasi dinding lebih baik.
  - **Kekurangan**: Rentan terhadap interferensi dari perangkat seperti microwave, Bluetooth, dan telepon nirkabel. Jumlah channel terbatas (biasanya 1, 6, 11 tanpa tumpang tindih).
- **5 GHz**:
  - **Kelebihan**: Lebih sedikit interferensi, lebih banyak channel (hingga 23 channel tanpa tumpang tindih), kecepatan lebih tinggi.
  - **Kekurangan**: Jangkauan lebih pendek, penetrasi dinding lebih lemah.
- **6 GHz** (Wi-Fi 6E dan Wi-Fi 7):
  - **Kelebihan**: Pita baru dengan lebih banyak channel (hingga 59 channel tanpa tumpang tindih), latensi lebih rendah, kapasitas lebih besar.
  - **Kekurangan**: Jangkauan terbatas, memerlukan perangkat yang mendukung 6 GHz.

## Channel dan Channel Bonding

- **Channel**: Frekuensi Wi-Fi dibagi menjadi saluran (channel) dengan lebar tertentu (biasanya 20 MHz). Di pita 2.4 GHz, channel yang tidak tumpang tindih adalah 1, 6, dan 11. Di pita 5 GHz dan 6 GHz, lebih banyak channel tersedia, memungkinkan komunikasi tanpa interferensi.
- **Channel Bonding**: Menggabungkan beberapa channel untuk meningkatkan lebar pita dan kecepatan. Misalnya:
  - 802.11n mendukung channel 40 MHz.
  - 802.11ac mendukung hingga 80 MHz atau 160 MHz.
  - 802.11ax dan 802.11be mendukung hingga 320 MHz (Wi-Fi 7).
  - **Catatan**: Channel bonding meningkatkan kecepatan tetapi dapat meningkatkan interferensi jika banyak jaringan berdekatan.

## SSID, BSSID, dan ESSID

- **SSID (Service Set Identifier)**: Nama jaringan Wi-Fi yang terlihat oleh pengguna, seperti "RumahWiFi". Dapat diatur oleh pengguna dan digunakan untuk mengidentifikasi jaringan.
- **BSSID (Basic Service Set Identifier)**: Alamat MAC unik dari access point (AP) tertentu dalam jaringan. Contoh: `00:1A:2B:3C:4D:5E`. BSSID membedakan AP individual dalam jaringan yang sama.
- **ESSID (Extended Service Set Identifier)**: Nama jaringan yang digunakan ketika beberapa AP digabungkan untuk membentuk jaringan yang lebih besar (misalnya di kantor atau kampus). ESSID memungkinkan roaming antar AP tanpa kehilangan koneksi.
