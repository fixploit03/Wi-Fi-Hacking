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


## Router

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/router.jpg" width="50%" />
</div>

Dalam konteks Wi-Fi, router sering kali berfungsi ganda sebagai Access Point dan juga mengelola fungsi jaringan yang lebih luas, seperti pemberian alamat IP (DHCP) dan pemisahan jaringan (Firewall).

Peran dalam Jaringan:
- **Penghubung:** Menghubungkan jaringan lokal (LAN) ke internet (WAN).
- **Keamanan Jaringan:** Menerapkan aturan firewall, NAT (Network Address Translation), dan kebijakan akses.

## 2. Access Point (AP)

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/ap.jpg" width="50%" />
</div>

Access Point (AP) adalah komponen utama yang bertindak sebagai gerbang dan memancarkan sinyal nirkabel. Dalam pentest, AP adalah target serangan paling umum untuk mendapatkan akses ke jaringan.

Peran dalam Jaringan:
- **Titik Akses:** Menghubungkan perangkat nirkabel (Client/STA) ke jaringan berkabel (wired network).
- **Manajemen Sinyal:** Mengelola SSID, channel frekuensi, dan daya pancar.
- **Enkripsi:** Bertanggung jawab menerapkan protokol keamanan (Open, WEP, WPA, WPA2, WPA3) dan manajemen kunci.

## Client/Station (STA)

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/client.jpeg" width="50%" />
</div>

Client atau Station adalah perangkat pengguna akhir yang terhubung ke AP, seperti laptop, smartphone, atau printer nirkabel.

Peran dalam Jaringan:
- **Penerima Sinyal:** Berinteraksi dan bertukar data dengan Access Point.
- **Otentikasi:** Menyediakan kredensial (kata sandi) untuk proses otentikasi jaringan.

## Antena

<div align="center">
  <img src="" width="50%">
</div>

Antena adalah komponen fisik yang digunakan untuk memancarkan dan menerima sinyal radio dalam jaringan Wi-Fi. Dalam pentest, antena dapat menjadi faktor penting karena memengaruhi kekuatan dan jangkauan sinyal, yang dapat dieksploitasi untuk analisis atau serangan jarak jauh.

Peran dalam Jaringan:
- Memperkuat dan menyebarkan sinyal Wi-Fi untuk memperluas jangkauan jaringan.
- Menerima sinyal dari perangkat client untuk menjaga konektivitas nirkabel.
- Mempengaruhi kualitas dan stabilitas koneksi Wi-Fi, terutama di area dengan hambatan fisik.

## Repeater/Extender

<div align="center">
  <img src="" width="50%">
</div>

Repeater atau Extender adalah perangkat yang digunakan untuk memperluas jangkauan sinyal Wi-Fi dengan menerima dan memancarkan ulang sinyal dari Access Point (AP) atau router. Dalam pentest, repeater dapat menjadi titik lemah karena sering kali memiliki konfigurasi keamanan yang kurang ketat.

Peran dalam Jaringan:

- Memperluas cakupan sinyal Wi-Fi ke area yang sulit dijangkau (dead zone).
- Meningkatkan kekuatan sinyal untuk perangkat client yang berada jauh dari AP.
- Menjaga konektivitas jaringan dengan mengulang sinyal tanpa memerlukan kabel tambahan.

## Switch/Hub

<div align="center">
  <img src="" width="50%">
</div>

Switch atau Hub adalah perangkat yang digunakan untuk menghubungkan beberapa perangkat dalam jaringan kabel, seperti komputer, Access Point (AP), atau router. Dalam pentest, switch atau hub dapat menjadi target untuk analisis lalu lintas jaringan atau eksploitasi konfigurasi yang lemah.

Peran dalam Jaringan:
- Mendistribusikan koneksi jaringan ke beberapa perangkat melalui port Ethernet.
- Switch mengelola lalu lintas data secara cerdas dengan mengarahkan data hanya ke perangkat tujuan, sementara hub menyebarkan data ke semua port.
- Mendukung integrasi perangkat kabel dalam infrastruktur jaringan Wi-Fi.
