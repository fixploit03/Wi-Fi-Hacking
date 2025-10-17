# Materi -2 | Dasar-Dasar Jaringan Wi-Fi

![materi 2](https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/Dasar-Dasar%20Jaringan%20Wi-Fi/img/materi%202.jpg)

Wi-Fi (Wireless Fidelity) adalah teknologi yang memungkinkan perangkat elektronik untuk bertukar data atau terhubung ke internet secara nirkabel menggunakan gelombang radio.

Secara teknis, Wi-Fi beroperasi berdasarkan standar IEEE 802.11 dan dapat bekerja pada frekuensi 2,4 GHz, 5 GHz, hingga 6 GHz (pada versi terbaru seperti Wi-Fi 6/6E dan Wi-Fi 7).

Sebuah jaringan Wi-Fi umumnya dibangun menggunakan router nirkabel, yang berfungsi sebagai pusat pengatur lalu lintas data. Router ini terhubung ke internet melalui koneksi kabel, kemudian mengubah sinyal kabel tersebut menjadi gelombang radio yang dapat ditangkap oleh perangkat di sekitarnya yang memiliki modul atau adaptor Wi-Fi.

## 1. Standar IEEE 802.11 (a/b/g/n/ac/ax)

Standar IEEE 802.11 merupakan fondasi utama seluruh teknologi komunikasi Wi-Fi modern. Standar ini dikembangkan oleh IEEE (Institute of Electrical and Electronics Engineers) dan mengatur berbagai aspek komunikasi nirkabel pada Wireless Local Area Network (WLAN), mulai dari:
- Mekanisme pertukaran sinyal antar perangkat (modulasi & transmisi radio)
- Kecepatan transfer data
- Rentang frekuensi operasi
- Hingga prosedur keamanan untuk melindungi koneksi

Setiap versi standar (seperti 802.11a, 802.11b, 802.11g, dan seterusnya) membawa peningkatan dalam kecepatan, jangkauan, efisiensi, dan keamanan.

### Tabel Perbandingan Standar IEEE 802.11

| Standar | Tahun Rilis | Frekuensi | Kecepatan Teoritis Maksimum | Kelebihan | Kekurangan |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 802.11a | 1999 | 5 GHz | 54 Mbps | Menggunakan frekuensi 5 GHz yang lebih sedikit gangguan (interferensi) dibandingkan 2,4 GHz, sehingga koneksi lebih stabil di lingkungan padat sinyal. | Jangkauan sinyal lebih pendek karena frekuensi 5 GHz tidak menembus dinding atau penghalang sebaik 2,4 GHz. |
| 802.11b | 1999 | 2.4 GHz | 11 Mbps | Memiliki jangkauan sinyal lebih luas karena menggunakan frekuensi 2,4 GHz yang mampu menembus dinding dan penghalang dengan baik.| Mudah mengalami interferensi karena frekuensi 2,4 GHz juga digunakan oleh banyak perangkat lain seperti microwave, Bluetooth, dan telepon nirkabel. |
| 802.11g | 2003 | 2.4 GHz | 54 Mbps | Memiliki kecepatan tinggi (hingga 54 Mbps) sekaligus jangkauan luas, karena tetap menggunakan frekuensi 2,4 GHz. | Masih rentan terhadap interferensi dari perangkat lain yang bekerja di frekuensi 2,4 GHz, seperti Bluetooth dan microwave. |
| 802.11n (Wi-Fi 4)	| 2009 | 2.4 & 5 GHz| 600 Mbps | Mendukung kecepatan tinggi (hingga 600 Mbps) dan jangkauan lebih luas berkat teknologi MIMO (Multiple Input Multiple Output) serta dukungan dual band (2,4 GHz dan 5 GHz). | Performa bisa menurun jika digunakan pada frekuensi 2,4 GHz karena masih rentan terhadap interferensi dari perangkat lain. |
| 802.11ac (Wi-Fi 5) | 2013 | 5 GHz | 3.5 Gbps | Mendukung kecepatan sangat tinggi (hingga beberapa gigabit per detik) dengan bandwidth lebar dan teknologi MU-MIMO, sehingga mampu melayani banyak perangkat sekaligus secara efisien. | Hanya beroperasi di frekuensi 5 GHz, sehingga jangkauan sinyal lebih pendek dan lebih mudah terhalang oleh dinding atau objek fisik. |
| 802.11ax (Wi-Fi 6/6E) | 2019/2020 | 2.4, 5, (6 GHz) | 9.6 Gbps | Memiliki efisiensi dan kapasitas tinggi, mampu melayani banyak perangkat secara bersamaan dengan teknologi OFDMA dan MU-MIMO pada frekuensi 2,4 GHz, 5 GHz, dan 6 GHz (untuk Wi-Fi 6E).| Perangkat dan router yang kompatibel masih relatif mahal, serta kinerja optimal hanya dirasakan jika semua perangkat mendukung Wi-Fi 6/6E. |
| 802.11be (Wi-Fi 7) | 2024 | 2.4, 5, 6 GHz | hingga 46 Gbps | Menawarkan kecepatan ultra tinggi, latensi sangat rendah, serta efisiensi spektrum lebih baik melalui teknologi Multi-Link Operation (MLO), 320 MHz channel bandwidth, dan 4096-QAM. Sangat ideal untuk VR/AR, gaming, dan streaming 8K. | Masih baru, belum banyak perangkat yang mendukung, serta biaya perangkat dan router masih tinggi. |


**Keterangan:**
- **Wi-Fi 4-7:** Merupakan penamaan baru untuk standar IEEE 802.11n hingga 802.11be, yang diperkenalkan agar lebih mudah dipahami oleh konsumen.
- **MIMO (Multiple-Input Multiple-Output):** Teknologi yang menggunakan banyak antena untuk mengirim dan menerima data secara bersamaan, sehingga meningkatkan kecepatan, kapasitas, dan keandalan koneksi.
- **MU-MIMO (Multi-User MIMO):** Pengembangan dari MIMO yang memungkinkan router berkomunikasi dengan beberapa perangkat sekaligus, bukan satu per satu, sehingga mengurangi antrean data dan meningkatkan efisiensi jaringan.
- **OFDMA (Orthogonal Frequency Division Multiple Access):** Teknologi yang membagi satu channel menjadi beberapa sub-channel kecil, memungkinkan banyak perangkat dilayani secara bersamaan. Hal ini meningkatkan efisiensi dan menurunkan latensi, terutama di lingkungan dengan banyak perangkat terhubung.
  
## 2. Gelombang Radio

Wi-Fi menggunakan gelombang radio untuk mengirim dan menerima data secara nirkabel antara perangkat dan router.

- **Analoginya:** Gelombang radio dapat diibaratkan seperti gelombang suara yang merambat di udara, namun tidak dapat didengar oleh manusia dan bergerak dengan kecepatan cahaya.
- **Cara Kerja:** Data digital berupa bit (0 dan 1) dari perangkat diubah menjadi sinyal radio oleh adapter nirkabel. Sinyal ini kemudian dipancarkan melalui antena, ditangkap oleh router, dan dikonversi kembali menjadi data digital untuk diteruskan ke jaringan internet atau perangkat lain.

## 3. Frekuensi (2.4 GHz vs 5 GHz)

Frekuensi adalah jumlah siklus gelombang radio yang melewati suatu titik dalam satu detik, diukur dalam satuan Hertz (Hz). Dalam teknologi Wi-Fi, frekuensi menentukan karakteristik gelombang, seperti panjang gelombang, jangkauan sinyal, dan kemampuan menembus hambatan fisik seperti dinding atau benda padat.

Wi-Fi umumnya beroperasi pada dua pita frekuensi utama: 2.4 GHz dan 5 GHz. Meskipun keduanya digunakan untuk mentransmisikan data secara nirkabel, masing-masing memiliki karakteristik fisik dan performa yang berbeda.

| Karakteristik | 2.4 GHz | 5 GHz |
|:--:|:--:|:--:|
| Jangkauan | Lebih jauh | Lebih dekat |
| Kecepatan | Lebih lambat | Lebih cepat |
| Kemampuan menembus dinding | Lebih baik | Lebih buruk |
| Interferensi | Lebih tinggi (sering terganggu oleh Bluetooth, microwave, dan jaringan tetangga) | Lebih rendah (karena memiliki lebih banyak channel) |
| Jumlah channel yang tersedia | Sedikit (hanya 3 channel yang tidak saling tumpang tindih) | Banyak (lebih dari 24 channel tidak tumpang tindih) |

## 4. Channel

Channel adalah jalur komunikasi dalam sebuah pita frekuensi yang digunakan untuk mengirim dan menerima data Wi-Fi. Bayangkan pita frekuensi sebagai jalan raya besar, dan channel sebagai jalur/lajurnya. Jika terlalu banyak AP menggunakan channel yang sama atau berdekatan (overlapping), akan terjadi interferensi yang mengganggu stabilitas dan performa koneksi, seperti kemacetan di jalan raya.

**Frekuensi 2.4 GHz:**
- Terdapat 14 channel, tetapi hanya channel 1, 6, dan 11 yang benar-benar non-overlapping di sebagian besar wilayah.
- Setiap channel memiliki bandwidth standar 20 MHz, tetapi channel yang berdekatan (misalnya: channel 1 dan 2) dapat tumpang tindih, menyebabkan interferensi.
- Interferensi terjadi jika dua router menggunakan channel yang sama atau berdekatan, sehingga mengurangi kecepatan dan stabilitas koneksi.

**Frekuensi 5 GHz:**
- Menyediakan lebih banyak channel non-overlapping, seperti channel 36, 40, 44, 48, 149, 153, 157, 161, dan lainnya, tergantung regulasi wilayah.
- Karena lebih banyak channel dan jarak antar-channel yang lebih lebar, risiko interferensi jauh lebih kecil dibandingkan frekuensi 2.4 GHz.
- Mendukung bandwidth lebih lebar (misalnya: 40 MHz, 80 MHz, hingga 160 MHz), memungkinkan kecepatan lebih tinggi, terutama pada standar Wi-Fi 5 (802.11ac) dan Wi-Fi 6 (802.11ax).

## 5. Channel Bandwidth

Channel Bandwidth adalah lebar pita frekuensi yang digunakan oleh sebuah channel dalam jaringan Wi-Fi. Semakin lebar bandwidth, semakin banyak data yang dapat ditransmisikan secara bersamaan, mirip seperti jalan yang lebih lebar memungkinkan lebih banyak kendaraan melintas. Namun, bandwidth yang lebih lebar juga lebih rentan terhadap interferensi dan dapat mengurangi jumlah saluran bebas yang tersedia.

**Frekuensi 2.4 GHz:**
- **20 MHz:** Bandwidth standar yang paling umum digunakan. Menawarkan stabilitas tinggi dan minim interferensi, cocok untuk lingkungan dengan banyak jaringan Wi-Fi.
- **40 MHz:** Menggandakan potensi kecepatan transfer dibandingkan bandwidth 20 MHz, tetapi menempati lebih banyak ruang frekuensi, sehingga meningkatkan risiko interferensi dan mengganggu saluran tetangga. Tidak direkomendasikan di area padat seperti perumahan atau perkantoran.

**Frekuensi 5 GHz:**
- Mendukung bandwidth 20 MHz, 40 MHz, 80 MHz, dan 160 MHz.
- Frekuensi 5 GHz memiliki lebih banyak saluran non-tumpang tindih dibandingkan 2.4 GHz, memungkinkan penggunaan bandwidth lebih lebar tanpa interferensi signifikan.
- Bandwidth 80 MHz dan 160 MHz umum digunakan pada standar Wi-Fi 5 (802.11ac) dan Wi-Fi 6 (802.11ax) untuk mendukung kecepatan tinggi, bahkan hingga gigabit, ideal untuk aplikasi seperti streaming 4K atau gaming.

## 6. Konsep BSSID, SSID, RSSI

### 1. BSSID

BSSID (Basic Service Set Identifier) adalah alamat MAC unik yang digunakan untuk mengidentifikasi AP tertentu dalam jaringan Wi-Fi. Setiap AP memiliki BSSID berbeda, bahkan jika memancarkan SSID yang sama.

**Contoh:** 
- `F8:32:E4:9A:1B:2C`

### 2. SSID

SSID (Service Set Identifier) adalah nama jaringan Wi-Fi yang dipancarkan oleh AP dan terlihat oleh pengguna saat mencari koneksi. SSID membantu pengguna memilih jaringan mana yang akan dihubungkan.

**Contoh:** 
- `WIFI_KERE`
- `MODAL_BANG`
- `CIE_KEPO`

### 3. RSSI

RSSI (Received Signal Strength Indicator) adalah Ukuran kekuatan sinyal Wi-Fi yang diterima oleh perangkat dalam satuan `dBm` (decibel-milliwatts).

**Kisaran umum:**
  - `-30 dBm`: Sinyal sangat kuat
  - `-50` s/d `-60 dBm`: Baik
  - `-70 dBm`: Cukup
  - Di bawah `-80 dBm` (`-90` s/d `-200dBm`): Lemah/tidak stabil
