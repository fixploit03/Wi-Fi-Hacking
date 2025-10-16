# Identitas Jaringan Wi-Fi

## SSID

SSID (Service Set Identifier) adalah nama publik dari sebuah jaringan Wi-Fi yang Anda lihat ketika memindai jaringan yang tersedia di perangkat Anda. Fungsinya adalah sebagai tanda pengenal utama yang membedakan satu jaringan dengan jaringan lainnya, misalnya "Wifi-Kantor" atau "Hotspot-Cafe". SSID bersifat konfigurabel dan dapat disembunyikan agar tidak ditampilkan secara publik.

## ESSID

ESSID (Extended Service Set Identifier) pada dasarnya adalah istilah teknis yang merujuk pada hal yang sama dengan SSID. Perbedaannya, ESSID lebih spesifik digunakan dalam lingkungan jaringan yang memiliki beberapa Access Point (AP) yang menggunakan nama (SSID) yang sama untuk membentuk satu area jaringan yang luas dan mulus, memungkinkan perangkat pengguna berpindah dari satu AP ke AP lain tanpa kehilangan koneksi.

## BSSID

BSSID (Basic Service Set Identifier) adalah alamat MAC fisik yang unik dan permanen dari sebuah perangkat Access Point. Setiap perangkat jaringan memiliki alamat MAC yang berbeda, sehingga BSSID berfungsi seperti nomor KTP untuk membedakan setiap Access Point, bahkan jika mereka memiliki SSID yang sama. Ini berguna untuk analisis teknis seperti pelacakan sumber sinyal.

## Network Type

Network Type menunjukkan mode operasi dasar dari jaringan nirkabel tersebut. Dua tipe utama adalah Infrastructure, di mana semua perangkat klien terhubung melalui sebuah Access Point (seperti di rumah atau kantor), dan Ad-hoc, di mana perangkat terhubung langsung satu sama lain tanpa perantara AP, membentuk jaringan sementara.

## Band/Frequency

Band/Frequency merujuk pada pita frekuensi radio yang digunakan oleh sinyal Wi-Fi. Dua band yang paling umum adalah 2.4 GHz (yang memiliki jangkauan lebih jauh tetapi lebih rentan terhadap interferensi) dan 5 GHz (yang menawarkan kecepatan lebih tinggi dan interferensi lebih sedikit, namun jangkauannya lebih pendek). Perangkat modern juga sudah mendukung band 6 GHz dengan Wi-Fi 6E.

## Channel

Channel adalah sub-pembagian dari pita frekuensi. Bayangkan band adalah sebuah jalan raya besar, maka channel adalah lajurnya. Untuk menghindari kemacetan (interferensi), setiap Access Point mengatur salurannya. Pemilihan channel yang tepat sangat penting untuk kinerja jaringan, terutama di area yang padat.

## Channel Width

Channel Width menentukan seberapa lebar "jalur" atau kapasitas yang digunakan oleh sebuah channel. Width yang lebih lebar (seperti 40 MHz atau 80 MHz) memungkinkan lebih banyak data yang dilewatkan sekaligus, mirip dengan menambah jumlah lajur pada sebuah jalan, sehingga meningkatkan kecepatan. Namun, width yang lebar juga lebih rentan terhadap interferensi dengan channel di sebelahnya.

## RSSI/Power

RSSI/Power (Received Signal Strength Indicator) adalah pengukuran yang menunjukkan seberapa kuat sinyal Wi-Fi diterima oleh perangkat Anda. Nilainya biasanya ditampilkan dalam desibel-milliwatts (dBm). Semakin mendekati nol (misalnya -40 dBm), sinyal semakin kuat. Semakin negatif (misalnya -80 dBm), sinyal semakin lemah dan koneksi dapat menjadi tidak stabil.

## Encryption

Encryption adalah metode yang digunakan untuk mengacak (enkripsi) data yang dikirim melalui jaringan Wi-Fi, sehingga tidak dapat dibaca oleh pihak yang tidak berhak. Standar enkripsi yang umum adalah WPA2 (Wi-Fi Protected Access 2) dan WPA3 yang lebih baru dan aman. Tanpa enkripsi, jaringan menjadi terbuka (Open) dan sangat rentan.

## Cipher

Cipher adalah algoritma matematis spesifik yang digunakan di dalam skema enkripsi untuk melakukan proses pengacakan data. Dua cipher umum dalam Wi-Fi adalah TKIP (yang lebih tua dan kurang aman) dan AES (Advanced Encryption Standard), yang merupakan standar kuat dan direkomendasikan untuk keamanan optimal.

## Authentication

Authentication Method adalah protokol yang memverifikasi identitas perangkat sebelum diizinkan bergabung dengan jaringan yang dilindungi. Metode yang umum adalah WPA-Personal (menggunakan kata sandi/pre-shared key yang sama untuk semua pengguna) dan WPA-Enterprise (yang menggunakan server terpusat, seperti RADIUS, untuk memberikan kredensial unik setiap pengguna).

## WPS Status

WPS Status menunjukkan apakah fitur Wi-Fi Protected Setup (WPS) pada sebuah Access Point aktif atau tidak. WPS dirancang untuk memudahkan penyambungan perangkat ke jaringan dengan menekan tombol atau memasukkan PIN, namun metode PIN-nya memiliki kerentanan keamanan yang diketahui, sehingga sering disarankan untuk menonaktifkannya.

## Client/Station (STA)

Client/Station (STA) merujuk pada perangkat individual yang terhubung ke jaringan Wi-Fi. Setiap ponsel, laptop, smart TV, atau perangkat IoT yang tersambung ke Access Point dianggap sebagai sebuah Station. Sebuah jaringan biasanya terdiri dari satu Access Point dan banyak Station.

## Vendor/Manufacturer (OUI)

Vendor/Manufacturer (OUI) mengidentifikasi produsen perangkat keras (Access Point atau klien) berdasarkan tiga byte pertama dari alamat MAC-nya (BSSID atau alamat MAC klien). OUI (Organizational Unique Identifier) ini terdaftar secara global, sehingga kita dapat mengetahui, misalnya, apakah perangkat tersebut dibuat oleh Apple, Samsung, Cisco, atau vendor lainnya.
