# Materi -2 | Dasar-Dasar Jaringan Wi-Fi

![materi 2](https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/Dasar-Dasar%20Jaringan%20Wi-Fi/img/materi%202.jpg)

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

### 1. SSID [MANTAP]

SSID (Service Set Identifier) adalah nama jaringan Wi-Fi yang dipancarkan oleh Access Point (AP) dan terlihat oleh pengguna saat mencari koneksi. SSID membantu pengguna memilih jaringan mana yang akan dihubungkan.

**Contoh:** 
- `WIFI_KERE`
- `MODAL_BANG`
- `CIE_KEPO`

**Detail Penting:**
- Maksimal 32 karakter.
- Bisa disembunyikan (hidden SSID), tidak dipancarkan dalam beacon, namun masih bisa terdeteksi lewat probe atau analisis lalu lintas.
- **SSID bersifat kosmetik:** banyak AP bisa menggunakan SSID yang sama (termasuk pada ESS), sehingga untuk identifikasi fisik tetap pakai BSSID.

**Catatan:** 
- SSID bisa disembunyikan (hidden SSID), sehingga tidak muncul di daftar jaringan publik.

### 2. BSSID [MANTAP]

BSSID adalah alamat MAC unik yang digunakan untuk mengidentifikasi Access Point (AP) atau Basic Service Set (BSS) tertentu dalam jaringan Wi-Fi. Setiap AP memiliki BSSID berbeda, bahkan jika memancarkan SSID (nama jaringan) yang sama.

**Contoh:** 
- `F8:32:E4:9A:1B:2C`

### 3. ESSID [MANTAP]

ESSID (Extended Service Set Identifier) merujuk pada identifier (nama) dari sebuah ESS (Extended Service Set), yaitu SSID yang dipakai oleh sekelompok AP yang saling terhubung pada backbone yang sama. Dalam praktik sehari-hari ESSID sering dipakai bergantian dengan SSID ketika berbicara tentang jaringan yang lebih besar (multi-AP).

**Penjelasan:**
- ESSID menunjukkan bahwa beberapa BSSID (AP berbeda) menyiarkan nama jaringan yang sama dan tergabung dalam satu infrastruktur yang sama, sehingga client dapat roaming antar-AP tanpa putus koneksi.

**Contoh:**
- **SSID:** `WIFI_KERE` dipancarkan oleh 5 AP berbeda di area kost, semua AP tersebut memakai ESSID yang sama yaitu `WIFI_KERE`.

### 4. MAC Address [MANTAP]

MAC Address (Media Access Control Address) adalah alamat fisik unik yang diberikan ke setiap antarmuka jaringan (Network Interface Card/NIC), baik pada Access Point (AP) maupun Client (STA). Alamat ini digunakan pada lapisan data-link (Layer 2) dalam model OSI untuk identifikasi dan komunikasi antar perangkat di jaringan lokal.

**Format:**
- Biasanya terdiri dari 6 pasangan heksadesimal (48-bit).

**Contoh:**
- `00:1A:2B:3C:4D:5E`

**Fungsi dalam Wi-Fi:**
- Mengidentifikasi setiap perangkat dalam jaringan.
- Digunakan dalam proses association, authentication, dan frame transmission.
- Dapat diubah (spoofing) untuk penyamaran identitas saat pengujian keamanan (pentesting).

### 5. BSS [MANTAP]

BSS (Basic Service Set) adalah unit dasar dari jaringan Wi-Fi yang terdiri dari satu Access Point (AP) dan satu atau lebih perangkat client (STA) yang terhubung ke AP tersebut. BSS memiliki BSSID (Basic Service Set Identifier) yang berfungsi sebagai identitas unik dari jaringan tersebut, biasanya berupa alamat MAC dari antarmuka nirkabel milik AP.

**Jenis-jenis BSS:**
- **Infrastructure BSS:** Mode paling umum digunakan, di mana terdapat AP yang menghubungkan client ke jaringan kabel (LAN) atau internet.
- **Independent BSS (IBSS):** Tidak menggunakan AP, komunikasi terjadi langsung antar perangkat (peer-to-peer), biasa disebut Ad-hoc mode.

**Contoh:**
- **BSSID:** `F8:32:E4:9A:1B:2C`
- **SSID:** `WIFI_KERE`
- **Client Terhubung:** Laptop & smartphone

### 6. ESS [MANTAP]

ESS (Extended Service Set) adalah sekumpulan beberapa BSS (Basic Service Set) yang saling terhubung melalui backbone jaringan yang sama, seperti switch atau router. Setiap BSS memiliki Access Point (AP) dengan BSSID unik, namun seluruhnya menggunakan SSID yang sama, sehingga pengguna dapat berpindah dari satu AP ke AP lain tanpa memutus koneksi (seamless roaming).

**Peran ESS:**
- Memperluas jangkauan sinyal Wi-Fi.
- Memungkinkan roaming antar-AP tanpa perlu koneksi ulang.
- Digunakan pada jaringan berskala besar seperti kampus, kantor, atau hotel.

**Contoh:**
- **SSID:** `WIFI_KERE` dipancarkan oleh tiga AP berbeda di lantai 1, 2, dan 3, semuanya tergabung dalam satu ESS.

### 7. AP [MANTAP]

AP (Access Point) adalah perangkat jaringan yang memancarkan sinyal Wi-Fi dan berfungsi sebagai jembatan (bridge) antara perangkat nirkabel (client/STA) dengan jaringan kabel (LAN). Access Point memungkinkan perangkat seperti laptop, smartphone, atau IoT untuk terhubung ke jaringan dan mengakses internet tanpa menggunakan kabel.

### 8. Client/STA (Station) [MANTAP]

Client atau STA (Station) adalah perangkat pengguna yang terhubung ke jaringan Wi-Fi melalui Access Point (AP). Perangkat ini berperan sebagai penerima dan pengirim data dalam jaringan nirkabel.

**Contoh:**
- Laptop
- Smartphone
- Tablet
- Perangkat IoT (kamera, smart TV, printer, sensor, dll).

### 9. Encryption (WEP/WPA/WPA2/WPA3) [MANTAP]

Encryption adalah protokol keamanan yang digunakan untuk mengenkripsi komunikasi Wi-Fi, sehingga data yang dikirim antara client dan Access Point (AP) tidak dapat dibaca oleh pihak yang tidak berwenang.

**Evolusi:**
- **WEP (Wired Equivalent Privacy):** Menggunakan algoritma RC4, sangat lemah dan mudah diretas.
- **WPA (Wi-Fi Protected Access):** Peningkatan dari WEP dengan penggunaan TKIP (Temporal Key Integrity Protocol) untuk memperbaiki kelemahan WEP.
- **WPA2:** Menggunakan AES (Advanced Encryption Standard) dengan mode CCMP, jauh lebih aman dan stabil.
- **WPA3:** Versi terbaru, menggunakan SAE (Simultaneous Authentication of Equals) yang lebih kuat terhadap serangan offline Brute Force Attack dan Dictionary Attack.

### Cipher [MANTAP]

Cipher adalah algoritma kriptografi yang digunakan untuk mengenkripsi payload data pada koneksi Wi-Fi.

Tujuannya adalah menjaga kerahasiaan dan integritas data selama transmisi antar perangkat.

**Contoh:**
- **WEP (RC4):** Cipher lama yang sudah usang dan sangat lemah.
- **TKIP (Temporal Key Integrity Protocol):** Digunakan pada WPA, memiliki beberapa perbaikan dibanding WEP, tetapi kini sudah deprecated.
- **CCMP (AES-CCM):** Cipher modern berbasis AES, digunakan pada WPA2, memberikan keamanan kuat dan stabilitas tinggi.
- **GCMP:** Cipher yang digunakan pada WPA3 dan Wi-Fi 6, menawarkan efisiensi dan performa tinggi pada throughput besar.

### Auth [MANTAP]

Auth (Authentication) adalah proses pengenalan dan verifikasi identitas perangkat atau pengguna sebelum diizinkan bergabung ke jaringan Wi-Fi.

Tujuannya adalah memastikan bahwa hanya perangkat yang sah yang dapat terhubung ke Access Point (AP).

**Contoh:**
- **Open:** Tidak ada otentikasi (jaringan terbuka, tidak aman).
- **WEP (Shared):** Otentikasi lama menggunakan shared key, sudah usang dan mudah diretas.
- **WPA-/WPA2-PSK:** Pre-Shared Key (kata sandi bersama), Umum digunakan di jaringan rumah atau skala kecil.
- **WPA-WPA2-Enterprise (802.1X):** Otentikasi berbasis server RADIUS menggunakan username/password atau sertifikat digital.
- **SAE (Simultaneous Authentication of Equals):** Metode otentikasi pada WPA3-Personal, menggantikan PSK tradisional dan lebih tahan terhadap serangan offline Brute Force Attack.


## 10 WPS Status [MANTAP]

WPS (Wi-Fi Protected Setup) adalah fitur untuk menyederhanakan proses koneksi perangkat ke jaringan Wi-Fi menggunakan PIN atau tombol push-button (PBC — Push Button Configuration).

**Status Umum:**
- **WPS Locked:** Fitur WPS sementara dikunci (biasanya setelah terlalu banyak percobaan PIN), tidak bisa digunakan sampai periode penguncian berakhir.
- **WPS Enabled:** WPS aktif, memudahkan koneksi tapi berpotensi rentan terhadap serangan (misalnya: PIN Brute Force Attack dan Pixie Dust Attack menggunakan Reaver dan PixieWPS).
- **WPS Disabled:** WPS dinonaktifkan, metode koneksi cepat ini tidak tersedia (biasanya paling aman dari segi WPS).

**Versi:**
- **v1.0**: Versi awal spesifikasi WPS.
- **v2.0**: Perbaikan dan tambahan fitur dari v1.0, namun keberadaan versi tidak selalu menjamin keamanan lebih baik karena kerentanan implementasi tetap bisa ada pada perangkat.

### 12. RSSI [MANTAP]

RSSI (Received Signal Strength Indicator) adalah Ukuran kekuatan sinyal Wi-Fi yang diterima oleh perangkat dalam satuan `dBm` (decibel-milliwatts).

**Kisaran Umum:**
  - `-30 dBm`: Sinyal sangat kuat
  - `-50` s/d `-60 dBm`: Baik
  - `-70 dBm`: Cukup
  - Di bawah `-80 dBm` (`-90` s/d `-200dBm`): Lemah/tidak stabil

### 13. Sent [DONE]

Sent adalah jumlah frame/paket yang dikirim oleh perangkat yang sedang dipantau (misalnya: AP atau client). Nilai ini dilaporkan dari perspektif alat capture, jadi pada baris AP, artinya paket yang dikirim oleh AP, pada baris client, artinya paket yang dikirim oleh client.

**Contoh:**
- Pada baris AP, Sent: `1200` berarti AP tersebut mengirim `1200` frame ke client.

### 14. Received [DONE]

Received adalah jumlah frame/paket yang diterima oleh perangkat yang sedang dipantau (misalnya: AP atau client). Nilai ini dilaporkan dari perspektif alat capture, jadi pada baris AP, artinya paket yang diterima oleh AP, pada baris client, artinya paket yang diterima oleh client.

**Contoh:**
- Pada baris AP, Received: `430` berarti AP tersebut menerima `430` frame dari client.

### 15. First Seen [MANTAP]

First Seen adalah waktu pertama kali suatu perangkat (baik Access Point maupun Client/STA) terdeteksi oleh alat monitoring (misalnya: Airodump-ng, Wireshark, atau Bettercap). Nilai ini menunjukkan kapan perangkat mulai aktif atau terlihat di udara (airtime) oleh perangkat yang melakukan pemantauan.

**Contoh:**
- **First Seen:** `2025-10-17 18:23:45`: Artinya perangkat pertama kali terdeteksi pada waktu tersebut.

### 16. Last Seen [MANTAP]

Last Seen adalah waktu terakhir kali suatu perangkat (baik Access Point maupun Client/STA) terdeteksi oleh alat monitoring (misalnya: Airodump-NG, Wireshark, atau Bettercap). Nilai ini menunjukkan momen terakhir perangkat mengirim atau memancarkan frame yang ditangkap oleh perangkat pemantau.

**Contoh:**
- **Last Seen:** `2025-10-17 18:45:02`: Artinya perangkat terakhir terlihat pada waktu tersebut.


### 17. Data Rate [MANTAP]

Data Rate adalah kecepatan teoritis maksimum yang dapat dicapai oleh koneksi Wi-Fi dalam kondisi ideal. Nilai ini menggambarkan kapasitas transmisi data antara Access Point (AP) dan Client/STA, dinyatakan dalam Mbps (Megabit per detik).

**Contoh:**
- **Data Rate:** `300 Mbps`
- **Data Rate:** `866.7 Mbps`

## 18. Throughput [MANTAP]

Throughput adalah kecepatan transmisi data aktual yang tercapai pada jaringan Wi-Fi setelah mempertimbangkan semua overhead (protokol, enkripsi, retransmisi, interferensi, dll.). Biasanya lebih rendah daripada Data Rate teoritis.

**Contoh:**
- **Data Rate:** `300 Mbps`: Throughput nyata mungkin `~180–240 Mbps` tergantung kondisi.

**Faktor yang memengaruhi Throughput:**
- Overhead protokol (header, ACK, management frame).
- Enkripsi (misalnya: WPA2-AES menambah sedikit overhead).
- Interferensi radio (dari perangkat lain atau jaringan tetangga).
- Jarak & RSSI (sinyal lemah menurunkan modulasu dan throughput).
- Jumlah client & konkruensi trafik (banyak client: bandwidth dibagi).
- Kualitas perangkat (antenna, radio, driver) dan channel bandwidth (20/40/80/160 MHz).
- Retransmisi & packet loss akibat gangguan atau kesalahan link.

### 19. Vendor/Manufacturer (OUI - Organizationally Unique Identifier)

Vendor atau Manufacturer adalah produsen perangkat jaringan yang dapat diidentifikasi melalui tiga byte pertama dari alamat MAC Address, yang disebut OUI (Organizationally Unique Identifier). Setiap vendor memiliki OUI yang terdaftar secara resmi di IEEE.

**Contoh:**
- `00:1A:2B`: Cisco Systems
- `F8:32:E4`: TP-Link
- `D4:6E:0E`: Xiaomi
