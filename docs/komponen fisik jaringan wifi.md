# Komponen Fisik Jaringan Wi-Fi

## Access Point (AP)

Ini adalah komponen utama yang bertindak sebagai **gerbang** dan memancarkan sinyal nirkabel. Dalam pentest, AP adalah target serangan paling umum untuk mendapatkan akses ke jaringan.

Peran dalam Jaringan:
- **Titik Akses:** Menghubungkan perangkat nirkabel (Client/STA) ke jaringan berkabel (wired network).
- **Manajemen Sinyal:** Mengelola SSID, channel frekuensi, dan daya pancar.
- **Enkripsi:** Bertanggung jawab menerapkan protokol keamanan (`WEP`, `WPA`, `WPA2`, `WPA3`) dan manajemen kunci.

## Client/Station (STA)

Client atau Station adalah perangkat pengguna akhir yang terhubung ke AP, seperti **laptop**, **smartphone**, atau **printer nirkabel**.

Peran dalam Jaringan:
- **Penerima Sinyal:** Berinteraksi dan bertukar data dengan Access Point.
- **Otentikasi:** Menyediakan kredensial (kata sandi) untuk proses otentikasi jaringan.

## Wireless Adapter/NIC (Network Interface Card)

Ini adalah kartu yang memungkinkan perangkat (baik AP maupun clinet) berkomunikasi secara nirkabel. Dalam konteks client dan router modern, NIC sering kali tertanam di dalam perangkat.

Peran dalam Jaringan:
- **Media Transmisi:** Mengubah data digital menjadi sinyal radio (radio wave) dan sebaliknya, sesuai standar `IEEE 802.11`.
- **Identifikasi:** Memiliki alamat MAC Address yang unik.

## Router

Dalam konteks Wi-Fi, router sering kali berfungsi ganda sebagai Access Point dan juga mengelola fungsi jaringan yang lebih luas, seperti pemberian alamat IP (DHCP) dan pemisahan jaringan (Firewall).

Peran dalam Jaringan:
- **Penghubung:** Menghubungkan jaringan lokal (LAN) ke internet (WAN).
- **Keamanan Jaringan:** Menerapkan aturan firewall, NAT (Network Address Translation), dan kebijakan akses.
