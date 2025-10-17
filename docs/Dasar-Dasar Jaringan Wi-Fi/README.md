# Dasar-Dasar Jaringan Wi-Fi

Wi-Fi (Wireless Fidelity) adalah teknologi yang memungkinkan perangkat elektronik untuk bertukar data atau terhubung ke internet secara nirkabel menggunakan gelombang radio. Wi-Fi bukanlah singkatan, melainkan merek dagang yang dibuat oleh Wi-Fi Alliance.

## Standar IEEE 802.11 (a/b/g/n/ac/ax)

IEEE (Institute of Electrical and Electronics Engineers) adalah organisasi yang membuat standar teknis untuk jaringan nirkabel. Standar ini terus berkembang untuk meningkatkan kecepatan, jangkauan, dan efisiensi.

| Standar | Tahun Rilis | Frekuensi | Kecepatan Teoritis Maksimum | Kelebihan | Kekurangan |
|:--:|:--:|:--:|:--:|:--:|:--:|
| **802.11a** | 1999 | 5 GHz | 54 Mbps | Menggunakan frekuensi 5 GHz yang lebih sedikit gangguan (interferensi) dibandingkan 2,4 GHz, sehingga koneksi lebih stabil di lingkungan padat sinyal. | Jangkauan sinyal lebih pendek karena frekuensi 5 GHz tidak menembus dinding atau penghalang sebaik 2,4 GHz. |
| **802.11b** | 1999 | 2.4 GHz | 11 Mbps | Memiliki jangkauan sinyal lebih luas karena menggunakan frekuensi 2,4 GHz yang mampu menembus dinding dan penghalang dengan baik.| Mudah mengalami interferensi karena frekuensi 2,4 GHz juga digunakan oleh banyak perangkat lain seperti microwave, Bluetooth, dan telepon nirkabel. |
| **802.11g** | 2003 | 2.4 GHz | 54 Mbps | Memiliki kecepatan tinggi (hingga 54 Mbps) sekaligus jangkauan luas, karena tetap menggunakan frekuensi 2,4 GHz. | Masih rentan terhadap interferensi dari perangkat lain yang bekerja di frekuensi 2,4 GHz, seperti Bluetooth dan microwave. |
| **802.11n (Wi-Fi 4)**	| 2009 | 2.4 & 5 GHz| 600 Mbps | Mendukung kecepatan tinggi (hingga 600 Mbps) dan jangkauan lebih luas berkat teknologi MIMO (Multiple Input Multiple Output) serta dukungan dual band (2,4 GHz dan 5 GHz). | Performa bisa menurun jika digunakan pada frekuensi 2,4 GHz karena masih rentan terhadap interferensi dari perangkat lain. |
| **802.11ac (Wi-Fi 5)** | 2013 | 5 GHz | 3.5 Gbps | Mendukung kecepatan sangat tinggi (hingga beberapa gigabit per detik) dengan bandwidth lebar dan teknologi MU-MIMO, sehingga mampu melayani banyak perangkat sekaligus secara efisien. | Hanya beroperasi di frekuensi 5 GHz, sehingga jangkauan sinyal lebih pendek dan lebih mudah terhalang oleh dinding atau objek fisik. |
| **802.11ax (Wi-Fi 6/6E)** | 2019/2020 | 2.4, 5, (6 GHz) | 9.6 Gbps | Memiliki efisiensi dan kapasitas tinggi, mampu melayani banyak perangkat secara bersamaan dengan teknologi OFDMA dan MU-MIMO pada frekuensi 2,4 GHz, 5 GHz, dan 6 GHz (untuk Wi-Fi 6E).| Perangkat dan router yang kompatibel masih relatif mahal, serta kinerja optimal hanya dirasakan jika semua perangkat mendukung Wi-Fi 6/6E. |

**Keterangan:**
- **Wi-Fi 4, 5, 6:** Nama baru yang diperkenalkan untuk memudahkan konsumen.
- **MIMO (Multiple-Input Multiple-Output):** Menggunakan banyak antena untuk meningkatkan kecepatan dan keandalan.
- **MU-MIMO (Multi-User MIMO):** Memungkinkan router berkomunikasi dengan banyak perangkat secara bersamaan.
- **OFDMA (Orthogonal Frequency Division Multiple Access):** Seperti membagi channel menjadi "sub-channel" kecil untuk melayani banyak perangkat sekaligus, meningkatkan efisiensi.

## 3. Gelombang Radio

Wi-Fi menggunakan gelombang radio untuk mengirimkan data.

- **Analoginya:** Seperti gelombang suara yang merambat di udara, tetapi tidak dapat didengar dan bergerak dengan kecepatan cahaya.
- **Cara Kerja:** Data digital (0 dan 1) dari perangkat Anda diubah menjadi sinyal radio oleh adapter nirkabel. Sinyal ini kemudian dipancarkan oleh antena, ditangkap oleh router, dan dikonversi kembali menjadi data digital.

## 4. Frekuensi (2.4 GHz vs 5 GHz)

Frekuensi adalah jumlah gelombang yang melewati suatu titik dalam satu detik. Wi-Fi terutama beroperasi pada dua pita frekuensi.

| Karakteristik | 2.4 GHz | 5 GHz |
|:--:|:--:|:--:|
| Jangkauan | Lebih Jauh | Lebih Dekat |
| Kecepatan | Lebih Lambat | Lebih Cepat |
| Kemampuan Tembus Dinding | Lebih Baik | Lebih Buruk |
| Interferensi | Tinggi (Bluetooth, microwave, sinyal tetangga) | Rendah (Lebih banyak channel) |
| Channel yang Tersedia | Sedikit (hanya 3 yang tidak tumpang-tindih) | Banyak (24+ yang tidak tumpang-tindih) |

**Kapan Memilih:**
- **Gunakan 2.4 GHz:** Untuk jangkauan yang luas dan untuk perangkat yang tidak membutuhkan kecepatan tinggi (seperti IoT smart home).
- **Gunakan 5 GHz:** Untuk performa terbaik, gaming, streaming, dan di area yang padat (seperti apartemen).

## 5. Channel

Channel adalah jalur di dalam pita frekuensi tempat data Anda mengalir. Bayangkan frekuensi adalah jalan raya besar, dan channel adalah lajurnya.

- **2.4 GHz:** Memiliki 14 channel, tetapi hanya channel 1, 6, dan 11 yang tidak saling tumpang-tindih (non-overlapping). Jika dua router menggunakan channel yang sama atau tumpang-tindih, akan terjadi interferensi (macet).
- **5 GHz:** Memiliki sangat banyak channel yang tidak tumpang-tindih (misalnya, 36, 40, 44, 48, dll.), sehingga potensi interferensi jauh lebih kecil.

**Praktik Terbaik:** Selalu setel router Anda ke channel yang paling sepi (biasanya menggunakan pengaturan Auto).

## 6. Channel Bandwidth

Channel Bandwidth adalah lebar dari channel tersebut. Semakin lebar, semakin banyak data yang bisa lewat sekaligus (seperti memperlebar jalan), sehingga meningkatkan kecepatan.

- **2.4 GHz:**
  - **20 MHz:** Standar, paling stabil.
  - **40 MHz:** Dapat menggandakan kecepatan, tetapi "memakan" channel tetangga dan rentan interferensi. Tidak disarankan di area padat.
- **5 GHz:**
  - **20 MHz, 40 MHz, 80 MHz, 160 MHz:** Pita 5 GHz memiliki ruang untuk bandwidth yang lebih lebar. 80 MHz dan 160 MHz digunakan oleh standar Wi-Fi 5 dan Wi-Fi 6 untuk mencapai kecepatan sangat tinggi.

**Trade-off:** Bandwidth yang lebih lebar meningkatkan kecepatan, tetapi mengurangi jumlah channel yang tersedia dan lebih rentan terhadap noise.

7. Konsep Identitas dan Sinyal (BSSID, SSID, RSSI)

    SSID (Service Set Identifier)

        Apa itu? Nama jaringan Wi-Fi yang Anda lihat saat memindai jaringan tersedia.

        Fungsi: Sebagai identitas publik yang mudah dikenali pengguna (contoh: "Rumah-Ku", "Kafe-Wifi").

        Tips: Sebaiknya gunakan nama yang unik dan non-deskriptif untuk keamanan.

    BSSID (Basic Service Set Identifier)

        Apa itu? Alamat MAC fisik dari access point (router) yang memancarkan sinyal Wi-Fi.

        Fungsi: Sebagai identitas unik dan permanen perangkat keras router. Setiap perangkat memiliki BSSID yang berbeda.

        Contoh: AA:BB:CC:11:22:33

    RSSI (Received Signal Strength Indicator)

        Apa itu? Pengukuran kekuatan sinyal yang diterima oleh perangkat Anda (seperti smartphone/laptop) dari router.

        Satuan: dBm (decibel-milliwatts). Nilainya selalu negatif.

        Cara Baca:

            -30 dBm : Sinyal sempurna (sangat dekat dengan router).

            -50 dBm : Sinyal sangat baik.

            -60 dBm hingga -70 dBm : Sinyal baik/cukup untuk sebagian besar aktivitas.

            -80 dBm : Sinyal lemah, koneksi mungkin tidak stabil.

            -90 dBm : Sinyal sangat lemah, hampir tidak dapat terhubung.

    Konsep Lainnya:

        ESSID (Extended SSID): Nama jaringan yang sama yang dipancarkan oleh beberapa access point (seperti di gedung perkantoran atau kampus). Perangkat Anda dapat beralih antar access point secara mulus tanpa mengubah koneksi.

        BSS (Basic Service Set): Satu access point dan semua perangkat yang terhubung kepadanya.

        ESS (Extended Service Set): Beberapa BSS yang terhubung dalam satu jaringan yang sama (melalui ESSID).
