# Komponen Fisik Jaringan Wi-Fi

Komponen fisik jaringan Wi-Fi adalah perangkat keras (hardware) yang digunakan untuk membangun, mengoperasikan, dan menjaga konektivitas jaringan nirkabel. Berikut adalah penjelasan singkat tentang komponen fisik utama dalam jaringan Wi-Fi:

## 1. Modem

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/modem.webp" width="50%" />
</div>

Modem adalah perangkat yang menghubungkan jaringan lokal (LAN) ke penyedia layanan internet (ISP) dengan mengubah sinyal digital menjadi sinyal analog atau sebaliknya.

Peran dalam Jaringan:
- Mengonversi sinyal internet (misalnya, dari kabel telepon, serat optik, atau kabel koaksial) agar dapat digunakan oleh perangkat di jaringan lokal, seperti router atau komputer.
- Berfungsi sebagai gerbang utama untuk mengakses internet dari jaringan lokal.
- Mengelola komunikasi data antara jaringan lokal dan ISP, memastikan koneksi internet stabil.


## 2. Router

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/router.jpg" width="50%" />
</div>

Router adalah perangkat jaringan yang berfungsi untuk menghubungkan dua atau lebih jaringan komputer, seperti menghubungkan jaringan lokal (LAN) dengan internet (WAN). Router bekerja dengan cara meneruskan (routing) data atau paket informasi dari satu jaringan ke jaringan lain berdasarkan alamat IP tujuan.

Peran dalam Jaringan:
- **Penghubung:** Menghubungkan jaringan lokal (LAN) ke internet (WAN).
- **Keamanan Jaringan:** Menerapkan aturan firewall, NAT (Network Address Translation), dan kebijakan akses.

## 3. Access Point (AP)

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/ap.jpg" width="50%" />
</div>

Access Point (AP) adalah perangkat jaringan yang memungkinkan perangkat nirkabel, seperti laptop, ponsel, atau tablet, untuk terhubung ke jaringan komputer, biasanya melalui Wi-Fi. Access Point berfungsi sebagai titik akses yang menghubungkan perangkat nirkabel ke jaringan kabel (seperti jaringan lokal/LAN) atau ke router untuk akses internet.

Peran dalam Jaringan:
- **Titik Akses:** Menghubungkan perangkat nirkabel (Client/STA) ke jaringan berkabel (wired network).
- **Manajemen Sinyal:** Mengelola SSID, channel frekuensi, dan daya pancar.
- **Enkripsi:** Bertanggung jawab menerapkan protokol keamanan (Open, WEP, WPA, WPA2, WPA3) dan manajemen kunci.

## 4. Client/Station (STA)

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/client.jpeg" width="50%" />
</div>

Client atau Station adalah perangkat yang terhubung ke jaringan nirkabel melalui Access Point (AP) untuk mengakses layanan jaringan, seperti internet atau sumber daya lokal. STA biasanya adalah perangkat pengguna akhir seperti ponsel, laptop, tablet, atau perangkat IoT yang mendukung Wi-Fi.

Peran dalam Jaringan:
- **Penerima Sinyal:** Berinteraksi dan bertukar data dengan Access Point.
- **Otentikasi:** Menyediakan kredensial (kata sandi) untuk proses otentikasi jaringan.

## 5. Antena

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/antena.jpg" width="50%">
</div>

Antena adalah komponen fisik yang digunakan untuk memancarkan dan menerima sinyal radio dalam jaringan Wi-Fi.

Peran dalam Jaringan:
- Memperkuat dan menyebarkan sinyal Wi-Fi untuk memperluas jangkauan jaringan.
- Menerima sinyal dari perangkat client untuk menjaga konektivitas nirkabel.
- Mempengaruhi kualitas dan stabilitas koneksi Wi-Fi, terutama di area dengan hambatan fisik.

## 6. Repeater/Extender

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/repeater.jpeg" width="50%">
</div>

Repeater atau Extender adalah perangkat yang digunakan untuk memperluas jangkauan sinyal Wi-Fi dengan menerima dan memancarkan ulang sinyal dari Access Point (AP) atau router.

Peran dalam Jaringan:

- Memperluas cakupan sinyal Wi-Fi ke area yang sulit dijangkau (dead zone).
- Meningkatkan kekuatan sinyal untuk perangkat client yang berada jauh dari AP.
- Menjaga konektivitas jaringan dengan mengulang sinyal tanpa memerlukan kabel tambahan.

## 7. Switch/Hub

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/switch.jpg" width="50%">
</div>

Switch atau Hub adalah perangkat yang digunakan untuk menghubungkan beberapa perangkat dalam jaringan kabel, seperti komputer, Access Point (AP), atau router.

Peran dalam Jaringan:
- Mendistribusikan koneksi jaringan ke beberapa perangkat melalui port Ethernet.
- Switch mengelola lalu lintas data secara cerdas dengan mengarahkan data hanya ke perangkat tujuan, sementara hub menyebarkan data ke semua port.
- Mendukung integrasi perangkat kabel dalam infrastruktur jaringan Wi-Fi.
