# Materi - 2 | Dasar-Dasar Jaringan Wi-Fi

![Materi - 2 | Dasar-Dasar Jaringan Wi-Fi](https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/Materi%20-%202%20%7C%20Dasar-Dasar%20Jaringan%20Wi-Fi/img/materi%202.jpg)

Wi-Fi (Wireless Fidelity) adalah teknologi komunikasi nirkabel yang memungkinkan perangkat elektronik saling bertukar data atau terhubung ke internet tanpa kabel, dengan memanfaatkan gelombang radio.

Secara teknis, Wi-Fi bekerja berdasarkan standar IEEE 802.11 dan menggunakan beberapa pita frekuensi utama, yaitu 2.4 GHz dan 5 GHz. Pita frekuensi ini menentukan jangkauan sinyal, kecepatan transmisi, serta kemampuan menembus hambatan fisik seperti dinding atau benda padat.

Sebuah jaringan Wi-Fi umumnya dibangun menggunakan router nirkabel, yang berfungsi sebagai pusat pengatur lalu lintas data. Router terhubung ke internet melalui kabel, lalu mengubah sinyal kabel menjadi gelombang radio agar dapat ditangkap oleh perangkat yang memiliki modul atau adapter Wi-Fi.

## 2.1 Standar IEEE 802.11 (a/b/g/n/ac/ax)

Standar IEEE 802.11 merupakan fondasi utama seluruh teknologi komunikasi Wi-Fi modern. Standar ini dikembangkan oleh IEEE (Institute of Electrical and Electronics Engineers) dan mengatur berbagai aspek komunikasi nirkabel pada Wireless Local Area Network (WLAN), mulai dari:
- Mekanisme pertukaran sinyal antar perangkat (modulasi & transmisi radio)
- Kecepatan transfer data
- Rentang frekuensi operasi
- Hingga prosedur keamanan untuk melindungi koneksi

Setiap versi standar (seperti 802.11a, 802.11b, 802.11g, dan seterusnya) membawa peningkatan dalam kecepatan, jangkauan, efisiensi, dan keamanan.

### 2.1.1 Tabel Perbandingan Standar IEEE 802.11

| Standar | Tahun Rilis | Frekuensi | Kecepatan Teoritis Maksimum | Kelebihan | Kekurangan |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 802.11a | 1999 | 5 GHz | 54 Mbps | Menggunakan frekuensi 5 GHz yang lebih sedikit gangguan (interferensi) dibandingkan 2,4 GHz, sehingga koneksi lebih stabil di lingkungan padat sinyal. | Jangkauan sinyal lebih pendek karena frekuensi 5 GHz tidak menembus dinding atau penghalang sebaik 2,4 GHz. |
| 802.11b | 1999 | 2.4 GHz | 11 Mbps | Memiliki jangkauan sinyal lebih luas karena menggunakan frekuensi 2,4 GHz yang mampu menembus dinding dan penghalang dengan baik.| Mudah mengalami interferensi karena frekuensi 2,4 GHz juga digunakan oleh banyak perangkat lain seperti microwave, Bluetooth, dan telepon nirkabel. |
| 802.11g | 2003 | 2.4 GHz | 54 Mbps | Memiliki kecepatan tinggi (hingga 54 Mbps) sekaligus jangkauan luas, karena tetap menggunakan frekuensi 2,4 GHz. | Masih rentan terhadap interferensi dari perangkat lain yang bekerja di frekuensi 2,4 GHz, seperti Bluetooth dan microwave. |
| 802.11n (Wi-Fi 4)	| 2009 | 2.4 & 5 GHz| 600 Mbps | Mendukung kecepatan tinggi (hingga 600 Mbps) dan jangkauan lebih luas berkat teknologi MIMO (Multiple Input Multiple Output) serta dukungan dual band (2,4 GHz dan 5 GHz). | Performa bisa menurun jika digunakan pada frekuensi 2,4 GHz karena masih rentan terhadap interferensi dari perangkat lain. |
| 802.11ac (Wi-Fi 5) | 2013 | 5 GHz | 3.5 Gbps | Mendukung kecepatan sangat tinggi (hingga beberapa gigabit per detik) dengan bandwidth lebar dan teknologi MU-MIMO, sehingga mampu melayani banyak perangkat sekaligus secara efisien. | Hanya beroperasi di frekuensi 5 GHz, sehingga jangkauan sinyal lebih pendek dan lebih mudah terhalang oleh dinding atau objek fisik. |
| 802.11ax (Wi-Fi 6/6E) | 2019/2020 | 2.4, 5, (6 GHz) | 9.6 Gbps | Memiliki efisiensi dan kapasitas tinggi, mampu melayani banyak perangkat secara bersamaan dengan teknologi OFDMA dan MU-MIMO pada frekuensi 2,4 GHz, 5 GHz, dan 6 GHz (untuk Wi-Fi 6E).| Perangkat dan router yang kompatibel masih relatif mahal, serta kinerja optimal hanya dirasakan jika semua perangkat mendukung Wi-Fi 6/6E. |

**Keterangan:**
- **Wi-Fi 4-6/6E:** Merupakan penamaan baru untuk standar IEEE 802.11n hingga 802.11ax, yang diperkenalkan agar lebih mudah dipahami oleh konsumen.
- **MIMO (Multiple-Input Multiple-Output):** Teknologi yang menggunakan banyak antena untuk mengirim dan menerima data secara bersamaan, sehingga meningkatkan kecepatan, kapasitas, dan keandalan koneksi.
- **MU-MIMO (Multi-User MIMO):** Pengembangan dari MIMO yang memungkinkan router berkomunikasi dengan beberapa perangkat sekaligus, bukan satu per satu, sehingga mengurangi antrean data dan meningkatkan efisiensi jaringan.
- **OFDMA (Orthogonal Frequency Division Multiple Access):** Teknologi yang membagi satu channel menjadi beberapa sub-channel kecil, memungkinkan banyak perangkat dilayani secara bersamaan. Hal ini meningkatkan efisiensi dan menurunkan latensi, terutama di lingkungan dengan banyak perangkat terhubung.

### 2.1.2 Ilustrasi MIMO, MU-MIMO, dan OFDMA

![Ilustrasi MIMO, MU-MIMO, dan OFDMA](https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/Dasar-Dasar%20Jaringan%20Wi-Fi/img/mimo.png)

## 2.2 Gelombang Radio

Wi-Fi menggunakan gelombang radio untuk mengirim dan menerima data secara nirkabel antara perangkat dan router.

- **Analoginya:** Gelombang radio dapat diibaratkan seperti gelombang suara yang merambat di udara, namun tidak dapat didengar oleh manusia dan bergerak dengan kecepatan cahaya.
- **Cara Kerja:** Data digital berupa bit (0 dan 1) dari perangkat diubah menjadi sinyal radio oleh adapter nirkabel. Sinyal ini kemudian dipancarkan melalui antena, ditangkap oleh router, dan dikonversi kembali menjadi data digital untuk diteruskan ke jaringan internet atau perangkat lain.

## 2.3 Frekuensi (2.4 GHz vs 5 GHz)

Frekuensi adalah jumlah siklus gelombang radio yang melewati suatu titik dalam satu detik, diukur dalam satuan Hertz (Hz). Dalam teknologi Wi-Fi, frekuensi menentukan karakteristik gelombang, seperti panjang gelombang, jangkauan sinyal, dan kemampuan menembus hambatan fisik seperti dinding atau benda padat.

Wi-Fi umumnya beroperasi pada dua pita frekuensi utama: 2.4 GHz dan 5 GHz. Meskipun keduanya digunakan untuk mentransmisikan data secara nirkabel, masing-masing memiliki karakteristik fisik dan performa yang berbeda.

### 2.3.1 Tabel Perbandingan Karakteristik Wi-Fi 2.4 GHz dan 5 GHz

| Karakteristik | 2.4 GHz | 5 GHz |
|:--:|:--:|:--:|
| Jangkauan | Lebih jauh | Lebih dekat |
| Kecepatan | Lebih lambat | Lebih cepat |
| Kemampuan menembus dinding | Lebih baik | Lebih buruk |
| Interferensi | Lebih tinggi (sering terganggu oleh Bluetooth, microwave, dan jaringan tetangga) | Lebih rendah (karena memiliki lebih banyak channel) |
| Jumlah channel yang tersedia | Sedikit (hanya 3 channel yang tidak saling tumpang tindih) | Banyak (lebih dari 24 channel tidak tumpang tindih) |

## 2.4 Channel

Channel adalah jalur komunikasi dalam sebuah pita frekuensi yang digunakan untuk mengirim dan menerima data Wi-Fi. Bayangkan pita frekuensi sebagai jalan raya besar, dan channel sebagai jalur/lajurnya. Jika terlalu banyak AP menggunakan channel yang sama atau berdekatan (overlapping), akan terjadi interferensi yang mengganggu stabilitas dan performa koneksi, seperti kemacetan di jalan raya.

### 2.4.1 Frekuensi 2.4 GHz

- Terdapat 14 channel, tetapi hanya channel 1, 6, dan 11 yang benar-benar non-overlapping di sebagian besar wilayah.
- Setiap channel memiliki bandwidth standar 20 MHz, tetapi channel yang berdekatan (misalnya: channel 1 dan 2) dapat tumpang tindih, menyebabkan interferensi.

### 2.4.2 Frekuensi 5 GHz

- Menyediakan lebih banyak channel non-overlapping, seperti channel 36, 40, 44, 48, 149, 153, 157, 161, dan lainnya, tergantung regulasi wilayah.
- Karena lebih banyak channel dan jarak antar-channel yang lebih lebar, risiko interferensi jauh lebih kecil dibandingkan frekuensi 2.4 GHz.

## 2.5 Channel Bandwidth

Channel Bandwidth adalah lebar pita frekuensi yang digunakan oleh sebuah channel dalam jaringan Wi-Fi. Semakin lebar bandwidth, semakin banyak data yang dapat ditransmisikan secara bersamaan, mirip seperti jalan yang lebih lebar memungkinkan lebih banyak kendaraan melintas. Namun, bandwidth yang lebih lebar juga lebih rentan terhadap interferensi dan dapat mengurangi jumlah saluran bebas yang tersedia.

### 2.5.1 Frekuensi 2.4 GHz

- **20 MHz:** Bandwidth standar yang paling umum digunakan. Menawarkan stabilitas tinggi dan minim interferensi, cocok untuk lingkungan dengan banyak jaringan Wi-Fi.
- **40 MHz:** Menggandakan potensi kecepatan transfer dibandingkan bandwidth 20 MHz, tetapi menempati lebih banyak ruang frekuensi, sehingga meningkatkan risiko interferensi dan mengganggu saluran tetangga. Tidak direkomendasikan di area padat seperti perumahan atau perkantoran.

### 2.5.2 Frekuensi 5 GHz

- Mendukung bandwidth 20 MHz, 40 MHz, 80 MHz, dan 160 MHz.
- Frekuensi 5 GHz memiliki lebih banyak saluran non-tumpang tindih dibandingkan 2.4 GHz, memungkinkan penggunaan bandwidth lebih lebar tanpa interferensi signifikan.

## 2.6 Konsep BSSID, SSID, ESSID, RSSI

### 2.6.1 BSSID

BSSID (Basic Service Set Identifier) adalah alamat MAC unik yang digunakan untuk mengidentifikasi AP tertentu dalam jaringan Wi-Fi. Setiap AP memiliki BSSID berbeda, bahkan jika memancarkan SSID yang sama.

**Contoh:** 
- `F8:32:E4:9A:1B:2C`

### 2.6.2 SSID

SSID (Service Set Identifier) adalah nama jaringan Wi-Fi yang dipancarkan oleh AP dan terlihat oleh pengguna saat mencari koneksi. SSID membantu pengguna memilih jaringan mana yang akan dihubungkan.

**Contoh:** 
- `WIFI_KERE`
- `MODAL_BANG`
- `CIE_KEPO`

### 2.6.3 ESSID

ESSID (Extended Service Set Identifier) adalah nama jaringan yang digunakan oleh sekelompok AP yang saling terhubung dalam satu infrastruktur (ESS). Dalam praktik sehari-hari, ESSID sering digunakan bergantian dengan SSID ketika berbicara tentang jaringan multi-AP.

**Contoh:**
- SSID `WIFI_KERE` dipancarkan oleh 10 AP berbeda di kost. Semua AP tersebut menggunakan ESSID yang sama yaitu `WIFI_KERE`, sehingga penghuni kost dapat berpindah ruangan tanpa terputus dari jaringan.

### 2.6.4 RSSI

RSSI (Received Signal Strength Indicator) adalah Ukuran kekuatan sinyal Wi-Fi yang diterima oleh perangkat dalam satuan decibel-milliwatts (dBm).

**Kisaran umum:**
  - `-30 dBm`: Sinyal sangat kuat (biasanya sangat dekat dengan AP)
  - `-50` hingga `-60 dBm`: Baik
  - `-70 dBm`: Cukup
  - Di bawah `-80 dBm` (sekitar `-85` hingga `-100 dBm`): Lemah/tidak stabil
