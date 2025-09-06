### Penjelasan Perintah

1. `sudo bettercap`: Digunakan untuk menjalankan **Bettercap** dengan hak akses `root`.
2. `set wifi.interface` Digunakan untuk memilih interface yang ingin digunakan pada modul Wi-Fi
3. `set wifi.handshakes.file` berfungsi untuk menentukan lokasi file pcap tempat menyimpan handshake Wi-Fi yang berhasil di-capture.
4. `set wifi.handshakes.aggregate` berfungsi untuk mengatur cara penyimpanan hasil handshake, jika bernilai `true`, semua handshake akan disimpan dalam satu file, sedangkan jika bernilai `false`, setiap jaringan akan memiliki file pcap tersendiri.
5. `wifi.recon on` berfungsi untuk mengaktifkan mode reconnaissance (pengintaian) pada modul Wi-Fi di Bettercap.
6. `wifi.show` berfungsi untuk menampilkan daftar access point (AP) dan client Wi-Fi yang telah ditemukan selama proses reconnaissance.
7. `set wifi.assoc.skip [BSSID]` berfungsi untuk menentukan BSSID yang akan diabaikan saat mengirim association request.
8. `wifi.deauth [BSSID]` digunakan untuk memulai serangan deauthentication pada jaringan Wi-Fi.
