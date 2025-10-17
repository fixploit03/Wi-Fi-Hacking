# Dasar-Dasar Jaringan Wi-Fi

Wi-Fi (Wireless Fidelity) adalah teknologi yang memungkinkan perangkat elektronik untuk bertukar data atau terhubung ke internet secara nirkabel menggunakan gelombang radio.

Secara teknis, Wi-Fi beroperasi berdasarkan standar IEEE 802.11 dan dapat bekerja pada frekuensi 2,4 GHz, 5 GHz, hingga 6 GHz (pada versi terbaru seperti Wi-Fi 6/6E dan Wi-Fi 7).

Sebuah jaringan Wi-Fi umumnya dibangun menggunakan router nirkabel, yang berfungsi sebagai pusat pengatur lalu lintas data. Router ini terhubung ke internet melalui koneksi kabel, kemudian mengubah sinyal kabel tersebut menjadi gelombang radio yang dapat ditangkap oleh perangkat di sekitarnya yang memiliki modul atau adaptor Wi-Fi.

## 1. Standar IEEE 802.11 (a/b/g/n/ac/ax)

Standar IEEE 802.11 merupakan dasar dari seluruh komunikasi Wi-Fi modern. Dikembangkan oleh komite kerja IEEE (Institute of Electrical and Electronics Engineers), standar ini mengatur berbagai aspek komunikasi nirkabel pada jaringan lokal (WLAN), mulai dari mekanisme pertukaran sinyal antar perangkat (modulasi dan transmisi radio), kecepatan transfer data, rentang frekuensi yang digunakan, hingga prosedur keamanan untuk melindungi koneksi.

Setiap standar (seperti 802.11a, 802.11b, 802.11g, dll) membawa peningkatan dalam hal kecepatan, jangkauan, efisiensi, dan keamanan. Berikut ini adalah berbagai standar IEEE 802.11:

| Standar | Tahun Rilis | Frekuensi | Kecepatan Teoritis Maksimum | Kelebihan | Kekurangan |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 802.11a | 1999 | 5 GHz | 54 Mbps | Menggunakan frekuensi 5 GHz yang lebih sedikit gangguan (interferensi) dibandingkan 2,4 GHz, sehingga koneksi lebih stabil di lingkungan padat sinyal. | Jangkauan sinyal lebih pendek karena frekuensi 5 GHz tidak menembus dinding atau penghalang sebaik 2,4 GHz. |
| 802.11b | 1999 | 2.4 GHz | 11 Mbps | Memiliki jangkauan sinyal lebih luas karena menggunakan frekuensi 2,4 GHz yang mampu menembus dinding dan penghalang dengan baik.| Mudah mengalami interferensi karena frekuensi 2,4 GHz juga digunakan oleh banyak perangkat lain seperti microwave, Bluetooth, dan telepon nirkabel. |
| 802.11g | 2003 | 2.4 GHz | 54 Mbps | Memiliki kecepatan tinggi (hingga 54 Mbps) sekaligus jangkauan luas, karena tetap menggunakan frekuensi 2,4 GHz. | Masih rentan terhadap interferensi dari perangkat lain yang bekerja di frekuensi 2,4 GHz, seperti Bluetooth dan microwave. |
| 802.11n (Wi-Fi 4)	| 2009 | 2.4 & 5 GHz| 600 Mbps | Mendukung kecepatan tinggi (hingga 600 Mbps) dan jangkauan lebih luas berkat teknologi MIMO (Multiple Input Multiple Output) serta dukungan dual band (2,4 GHz dan 5 GHz). | Performa bisa menurun jika digunakan pada frekuensi 2,4 GHz karena masih rentan terhadap interferensi dari perangkat lain. |
| 802.11ac (Wi-Fi 5) | 2013 | 5 GHz | 3.5 Gbps | Mendukung kecepatan sangat tinggi (hingga beberapa gigabit per detik) dengan bandwidth lebar dan teknologi MU-MIMO, sehingga mampu melayani banyak perangkat sekaligus secara efisien. | Hanya beroperasi di frekuensi 5 GHz, sehingga jangkauan sinyal lebih pendek dan lebih mudah terhalang oleh dinding atau objek fisik. |
| 802.11ax (Wi-Fi 6/6E) | 2019/2020 | 2.4, 5, (6 GHz) | 9.6 Gbps | Memiliki efisiensi dan kapasitas tinggi, mampu melayani banyak perangkat secara bersamaan dengan teknologi OFDMA dan MU-MIMO pada frekuensi 2,4 GHz, 5 GHz, dan 6 GHz (untuk Wi-Fi 6E).| Perangkat dan router yang kompatibel masih relatif mahal, serta kinerja optimal hanya dirasakan jika semua perangkat mendukung Wi-Fi 6/6E. |
| 802.11be (Wi-Fi 7) | 2024 | 2.4, 5, 6 GHz | hingga 46 Gbps | Menawarkan kecepatan ultra tinggi, latensi sangat rendah, serta efisiensi spektrum lebih baik melalui teknologi Multi-Link Operation (MLO), 320 MHz channel bandwidth, dan 4096-QAM. Sangat ideal untuk VR/AR, gaming, dan streaming 8K. | Masih baru, belum banyak perangkat yang mendukung, serta biaya perangkat dan router masih tinggi. |

### Keterangan:
- **Wi-Fi 4-7:** Merupakan penamaan baru untuk standar IEEE 802.11n hingga 802.11be, yang diperkenalkan agar lebih mudah dipahami oleh konsumen.
- **MIMO (Multiple-Input Multiple-Output):** Teknologi yang menggunakan banyak antena untuk mengirim dan menerima data secara bersamaan, sehingga meningkatkan kecepatan, kapasitas, dan keandalan koneksi.
- **MU-MIMO (Multi-User MIMO):** Pengembangan dari MIMO yang memungkinkan router berkomunikasi dengan beberapa perangkat sekaligus, bukan satu per satu, sehingga mengurangi antrean data dan meningkatkan efisiensi jaringan.
- **OFDMA (Orthogonal Frequency Division Multiple Access):** eknologi yang membagi satu channel menjadi beberapa sub-channel kecil, memungkinkan banyak perangkat dilayani secara bersamaan. Hal ini meningkatkan efisiensi dan menurunkan latensi, terutama di lingkungan dengan banyak perangkat terhubung.
  
## 2. Gelombang Radio

Wi-Fi menggunakan gelombang radio untuk mengirim dan menerima data secara nirkabel antara perangkat dan router.

- **Analoginya:** Gelombang radio dapat diibaratkan seperti gelombang suara yang merambat di udara, namun tidak dapat didengar oleh manusia dan bergerak dengan kecepatan cahaya.
- **Cara Kerja:** Data digital berupa bit (0 dan 1) dari perangkat diubah menjadi sinyal radio oleh adapter nirkabel. Sinyal ini kemudian dipancarkan melalui antena, ditangkap oleh router, dan dikonversi kembali menjadi data digital untuk diteruskan ke jaringan internet atau perangkat lain.

## 3. Frekuensi (2.4 GHz vs 5 GHz)

Frekuensi adalah jumlah gelombang yang melewati suatu titik dalam satu detik. Wi-Fi umumnya beroperasi pada dua pita frekuensi utama: 2.4 GHz dan 5 GHz, masing-masing memiliki kelebihan dan kekurangannya sendiri.

| Karakteristik | 2.4 GHz | 5 GHz |
|:--:|:--:|:--:|
| Jangkauan | Lebih jauh | Lebih dekat |
| Kecepatan | Lebih lambat | Lebih cepat |
| Kemampuan menembus dinding | Lebih baik | Lebih buruk |
| Interferensi | Lebih tinggi (sering terganggu oleh Bluetooth, microwave, dan jaringan tetangga) | Lebih rendah (karena memiliki lebih banyak channel) |
| Jumlah channel yang tersedia | Sedikit (hanya 3 channel yang tidak saling tumpang tindih) | Banyak (lebih dari 24 channel tidak tumpang tindih) |

### Kapan Menggunakan 2.4 GHz dan 5 GHz:
- **Gunakan 2.4 GHz:** Cocok untuk jangkauan yang lebih luas atau area dengan banyak penghalang (seperti tembok). Ideal untuk perangkat IoT, smart home, atau perangkat yang tidak membutuhkan kecepatan tinggi.
- **Gunakan 5 GHz:** Pilihan terbaik untuk kinerja tinggi, seperti gaming online, streaming video berkualitas tinggi, atau transfer data besar. Cocok digunakan di area padat pengguna (misalnya apartemen), karena lebih sedikit gangguan dan memiliki lebih banyak channel.

## 4. Channel

Channel adalah jalur komunikasi di dalam sebuah pita frekuensi tempat data Wi-Fi mengalir. Bayangkan frekuensi sebagai jalan raya besar, sedangkan channel adalah lajurnya, jika terlalu banyak perangkat di lajur yang sama, akan terjadi kemacetan (interferensi).

- **2.4 GHz:** Memiliki 14 channel, namun hanya channel 1, 6, dan 11 yang tidak saling tumpang tindih (non-overlapping). Jika dua router menggunakan channel yang sama atau berdekatan, sinyal akan saling mengganggu (interferensi) dan menyebabkan koneksi tidak stabil.
- **5 GHz:** Menyediakan lebih banyak channel non-overlapping (contohnya 36, 40, 44, 48, 149, 153, 157, 161, dan lainnya), sehingga risiko interferensi jauh lebih kecil dan kinerja lebih optimal.

### Praktik Terbaik:

Selalu atur router Anda ke channel yang paling sepi untuk meminimalkan interferensi. Sebagian besar router modern sudah mendukung pengaturan otomatis (Auto Channel Selection) untuk memilih channel terbaik secara dinamis.

## 5. Channel Bandwidth

Channel Bandwidth adalah lebar pita (width) dari sebuah channel frekuensi. Semakin lebar channel, semakin banyak data yang dapat dikirim secara bersamaan, seperti memperlebar jalan agar lebih banyak mobil bisa lewat sekaligus. Namun, bandwidth yang lebih lebar juga lebih rentan terhadap interferensi dan mengurangi jumlah channel bebas yang tersedia.

- **Pada Frekuensi 2.4 GHz:**
  - 20 MHz: Merupakan lebar standar yang paling stabil dan umum digunakan.
  - 40 MHz: Dapat menggandakan kecepatan transfer, tetapi juga mengganggu channel tetangga dan meningkatkan risiko interferensi. Tidak direkomendasikan untuk area dengan banyak jaringan Wi-Fi (misalnya apartemen atau perkantoran).
- **Pada Frekuensi 5 GHz:**
  - Mendukung 20 MHz, 40 MHz, 80 MHz, dan 160 MHz.
  - Pita 5 GHz memiliki lebih banyak ruang frekuensi, sehingga dapat menggunakan bandwidth lebih lebar tanpa tumpang tindih.
  - 80 MHz dan 160 MHz digunakan pada Wi-Fi 5 (802.11ac) dan Wi-Fi 6 (802.11ax) untuk mencapai kecepatan hingga gigabit.

### Trade-off:
- **Bandwidth lebar (80–160 MHz):** Kecepatan tinggi, tetapi lebih rentan terhadap gangguan dan hanya cocok di lingkungan dengan sedikit jaringan lain.
- **Bandwidth sempit (20–40 MHz):** Lebih stabil dan cocok untuk area padat, meskipun dengan kecepatan yang lebih rendah.

## 6. Konsep BSSID, SSID, RSSI, dll

### 1. SSID (Service Set Identifier)

SSID adalah nama jaringan Wi-Fi yang terlihat oleh pengguna saat mencari koneksi.

**Contoh:** `WIFI_KERE`, `MODAL_BANG`, `CIE_KEPO`

**Catatan:** 
- SSID bisa disembunyikan (hidden SSID), sehingga tidak muncul di daftar jaringan publik.

### 2. BSSID (Basic Service Set Identifier)

BSSID adalah alamat MAC Address unik dari AP.

**Contoh:** `F8:32:E4:9A:1B:2C`

### 3. ESSID (Extended Service Set Identifier)

ESSID adalah kumpulan dari beberapa BSSID (AP) yang menggunakan SSID yang sama dan terhubung ke satu jaringan yang sama.

**Contoh:** SSID `WIFI_KERE` disiarkan dari 5 AP berbeda di area kost, semuanya memiliki ESSID yang sama yaitu `WIFI_KERE`.

### 4. MAC Address (Media Access Control Address)

MAC Address adalah alamat unik yang dimiliki setiap perangkat jaringan (termasuk AP dan client).

**Contoh:** `00:1A:2B:3C:4D:5E`

### 5. BSS (Basic Service Set)

BSS adalah satu jaringan Wi-Fi dasar yang terdiri dari satu AP dan client-client yang terhubung ke AP tersebut.

**Jenis:**
- Infrastructure BSS: Ada AP (umum digunakan).
- Independent BSS (IBSS): Tanpa AP, disebut juga Ad-hoc mode (peer-to-peer).

### 6. ESS (Extended Service Set) 

ESS adalah sekumpulan beberapa BSS (beberapa AP) yang saling terhubung menggunakan backbone jaringan yang sama.

**Contoh:** Sistem Wi-Fi di kost, hotel, atau kantor besar.

### 7. AP (Access Point)

AP (Access Point) adalah perangkat yang memancarkan sinyal Wi-Fi dan menghubungkan client nirkabel ke jaringan kabel (LAN).

### 8. Client/STA (Station)

Client/STA (Station) adalah perangkat pengguna (laptop, smartphone, tablet, IoT) yang terhubung ke jaringan Wi-Fi.

### 9. Encryption (WEP/WPA/WPA2/WPA3)

Encryption adalah protokol keamanan yang digunakan untuk mengenkripsi komunikasi Wi-Fi.

**Evolusi:**
- WEP: Lemah, mudah diretas.
- WPA: Peningkatan dari WEP dengan TKIP.
- WPA2: Menggunakan AES (lebih aman).
- WPA3: Paling baru, menggunakan SAE (Simultaneous Authentication of Equals).

### 10. Channel & Frequency

Channel & Frequency adalah jalur komunikasi tempat sinyal radio dikirimkan.

**Catatan:**
- 2.4 GHz: 14 channel (1, 6, 11 paling aman).
- 5 GHz: Banyak channel, interferensi rendah.
- 6 GHz: Channel eksklusif untuk Wi-Fi 6/6E dan7, performa sangat tinggi.

### 11. RSSI (Received Signal Strength Indicator)

RSSI adalah Ukuran kekuatan sinyal Wi-Fi yang diterima oleh perangkat dalam satuan `dBm` (decibel-milliwatts).

**Kisaran Umum:**
  - `-30 dBm`: Sinyal sangat kuat
  - `-50` s/d `-60 dBm`: Baik
  - `-70 dBm`: Cukup
  - Di bawah `-80 dBm` (`-90` s/d `-200dBm`): Lemah/tidak stabil

## 12. Data Rate

Data Rate adalah kecepatan teoritis yang bisa dicapai (misalnya 300 Mbps).

## 13. Throughput

Throughput adalah kecepatan aktual setelah dikurangi overhead (biasanya 60–80% dari data rate).

## 14. Frame Wi-Fi (Management, Control, Data)

Frame Wi-Fi adalah paket data yang membawa informasi antara client dan AP, berisi data pengguna, alamat pengirim/penerima, serta informasi kontrol jaringan.

**Jenis-Jenis Frame Wi-Fi:**
- Management Frame: Untuk mengatur koneksi (Beacon, Probe, Authentication, dll).
- Control Frame: Untuk mengontrol pengiriman (ACK, RTS/CTS).
- Data Frame: Untuk mengirimkan data pengguna.
