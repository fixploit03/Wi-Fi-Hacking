# Modul 3: Mode Operasi Wi-Fi

## Jenis Mode Wi-Fi (Infrastructure vs Ad-Hoc)

Wi-Fi dapat beroperasi dalam dua jenis mode utama: **Infrastructure** dan **Ad-Hoc**.

- **Infrastructure Mode**:
  - Perangkat (klien) terhubung ke jaringan melalui Access Point (AP) atau router.
  - Umum digunakan di rumah, kantor, atau tempat umum (hotspot Wi-Fi).
  - Memungkinkan akses ke internet atau sumber daya jaringan lainnya melalui AP.
  - Keunggulan: Manajemen terpusat, keamanan lebih baik, dan mendukung roaming antar AP.
  - Kekurangan: Membutuhkan perangkat tambahan seperti router atau AP.

- **Ad-Hoc Mode**:
  - Perangkat terhubung langsung satu sama lain tanpa AP (peer-to-peer).
  - Cocok untuk komunikasi sementara, seperti berbagi file antar dua perangkat.
  - Keunggulan: Tidak memerlukan infrastruktur tambahan, cepat diatur.
  - Kekurangan: Jangkauan terbatas, keamanan lebih lemah, dan tidak mendukung manajemen jaringan kompleks.

## AP (Access Point) Mode

- **Definisi**: Perangkat beroperasi sebagai titik akses (Access Point) untuk menghubungkan klien ke jaringan.
- **Fungsi**:
  - Menyediakan SSID untuk diakses oleh perangkat klien.
  - Mengelola koneksi, keamanan (misalnya WPA2), dan distribusi alamat IP melalui DHCP.
  - Menghubungkan klien ke jaringan kabel atau internet.
- **Contoh Penggunaan**: Router Wi-Fi di rumah, AP di kafe atau kampus.
- **Karakteristik**: Membutuhkan perangkat keras khusus atau perangkat dengan kemampuan AP (seperti router atau PC dengan software tertentu).

## STA (Station/Client) Mode

- **Definisi**: Perangkat beroperasi sebagai klien yang terhubung ke Access Point.
- **Fungsi**:
  - Perangkat (seperti laptop, ponsel, atau tablet) mencari dan terhubung ke SSID yang disediakan AP.
  - Menggunakan protokol seperti DHCP untuk mendapatkan alamat IP.
- **Contoh Penggunaan**: Smartphone yang terhubung ke Wi-Fi rumah atau laptop yang mengakses jaringan kantor.
- **Karakteristik**: Mode default untuk sebagian besar perangkat Wi-Fi klien.

## Monitor Mode

- **Definisi**: Mode di mana perangkat Wi-Fi menangkap semua paket data di udara tanpa harus terhubung ke jaringan.
- **Fungsi**:
  - Digunakan untuk analisis jaringan, debugging, atau pengujian keamanan (misalnya dengan alat seperti Wireshark atau Aircrack-ng).
  - Tidak mengirim data, hanya menerima dan merekam.
- **Contoh Penggunaan**: Memantau aktivitas jaringan, mendeteksi intrusi, atau analisis performa Wi-Fi.
- **Karakteristik**: Memerlukan perangkat keras dan driver khusus yang mendukung mode ini (tidak semua kartu Wi-Fi mendukung).

## Master Mode

- **Definisi**: Mode di mana perangkat berfungsi sebagai Access Point virtual, mirip dengan AP Mode.
- **Fungsi**:
  - Mengizinkan perangkat seperti laptop atau PC untuk bertindak sebagai AP menggunakan kartu Wi-Fi.
  - Sering digunakan untuk membuat hotspot Wi-Fi.
- **Contoh Penggunaan**: Membuat hotspot di laptop untuk berbagi koneksi internet.
- **Karakteristik**: Membutuhkan dukungan perangkat keras dan software seperti hostapd di Linux.

## Promiscuous Mode

- **Definisi**: Mode di mana perangkat Wi-Fi menangkap semua paket data dalam jaringan yang ditujukan untuk perangkat lain, selama perangkat tersebut terhubung ke jaringan.
- **Fungsi**:
  - Mirip dengan Monitor Mode, tetapi hanya menangkap paket dalam jaringan yang sama (bukan semua paket di udara).
  - Digunakan untuk analisis jaringan atau pengujian keamanan.
- **Contoh Penggunaan**: Memantau lalu lintas jaringan untuk mendeteksi aktivitas mencurigakan.
- **Karakteristik**: Tidak memerlukan perangkat keras khusus seperti Monitor Mode, tetapi terbatas pada jaringan yang sudah terhubung.
