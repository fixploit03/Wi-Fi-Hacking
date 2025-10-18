# Modul 4: Arsitektur Wireless Network

## Komponen Jaringan Wireless (AP, Client, Controller)

- **Access Point (AP)**:
  - Perangkat yang menghubungkan perangkat nirkabel (klien) ke jaringan kabel atau internet.
  - Fungsi: Menyediakan SSID, mengelola koneksi klien, keamanan (misalnya WPA3), dan distribusi alamat IP melalui DHCP.
  - Contoh: Router Wi-Fi rumah, AP di kantor atau kafe.
- **Client**:
  - Perangkat yang terhubung ke jaringan melalui AP, seperti smartphone, laptop, atau IoT device.
  - Beroperasi dalam mode Station (STA), mencari SSID, dan berkomunikasi dengan AP untuk mengakses jaringan.
  - Contoh: Laptop yang terhubung ke Wi-Fi kantor.
- **Wireless Controller**:
  - Perangkat atau software yang mengelola beberapa AP dalam jaringan besar.
  - Fungsi: Manajemen terpusat untuk konfigurasi, keamanan, roaming antar AP, dan optimalisasi performa.
  - Contoh Penggunaan: Jaringan Wi-Fi di kampus atau perusahaan dengan banyak AP.

## Topologi Wireless (BSS, ESS, IBSS, MBSS)

- **BSS (Basic Service Set)**:
  - Unit dasar jaringan Wi-Fi, terdiri dari satu AP dan beberapa klien yang terhubung ke AP tersebut.
  - Menggunakan Infrastructure Mode, dengan AP sebagai pusat komunikasi.
  - Contoh: Jaringan Wi-Fi rumah dengan satu router.
- **ESS (Extended Service Set)**:
  - Kumpulan beberapa BSS yang terhubung melalui jaringan kabel (backbone) untuk membentuk jaringan yang lebih besar.
  - Menggunakan SSID yang sama untuk memungkinkan roaming antar AP tanpa kehilangan koneksi.
  - Contoh: Jaringan Wi-Fi kampus dengan beberapa AP.
- **IBSS (Independent Basic Service Set)**:
  - Jaringan Ad-Hoc di mana perangkat terhubung langsung tanpa AP.
  - Tidak ada manajemen terpusat, cocok untuk komunikasi sementara.
  - Contoh: Berbagi file antar dua laptop melalui Wi-Fi tanpa router.
- **MBSS (Mesh Basic Service Set)**:
  - Topologi jaringan mesh di mana beberapa AP terhubung secara nirkabel untuk memperluas cakupan.
  - Setiap AP dapat berfungsi sebagai node untuk meneruskan data.
  - Contoh: Jaringan mesh di area luas seperti taman atau gudang.

## Wireless Distribution System (WDS)

- **Definisi**: Sistem yang memungkinkan AP untuk berkomunikasi secara nirkabel guna memperluas cakupan jaringan tanpa memerlukan koneksi kabel antar AP.
- **Fungsi**:
  - Memperluas jangkauan Wi-Fi dengan menghubungkan AP secara nirkabel.
  - Mendukung mode repeater (mengulang sinyal) atau bridge (menghubungkan jaringan).
- **Keunggulan**: Mengurangi kebutuhan kabel, fleksibel untuk area yang sulit dijangkau.
- **Kekurangan**: Mengurangi bandwidth karena AP harus menerima dan mengirim ulang data, dapat meningkatkan latensi.
- **Contoh Penggunaan**: Menghubungkan dua bangunan tanpa kabel menggunakan AP dengan WDS.

## Mesh Network

- **Definisi**: Jaringan di mana setiap AP (node) terhubung secara nirkabel dengan node lain untuk membentuk jaringan yang saling terhubung.
- **Fungsi**:
  - Setiap node dapat meneruskan data ke node lain, menciptakan jalur komunikasi yang dinamis.
  - Mendukung self-healing: jika satu node gagal, data dapat dialihkan melalui node lain.
- **Keunggulan**:
  - Skalabilitas tinggi, cakupan luas, dan keandalan tinggi.
  - Mudah diperluas dengan menambahkan node baru.
- **Kekurangan**:
  - Kompleksitas konfigurasi lebih tinggi.
  - Biaya perangkat lebih mahal dibandingkan WDS tradisional.
- **Contoh Penggunaan**: Jaringan Wi-Fi di kota pintar, gudang besar, atau rumah dengan banyak perangkat IoT.
