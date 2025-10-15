## Catatan Penting

1. WEP:
   - Agar serangan ARP Replay berhasil, minimal harus ada satu client yang sedang terhubung ke Access Point (AP).
   - Tanpa adanya client yang terhubung, tidak ada traffic ARP yang dapat ditangkap dan di-replay, sehingga serangan kemungkinan besar akan gagal.
2. WPA/WPA2-PSK:
   - Untuk melakukan serangan Deauthentication dan menangkap 4-way handshake, diperlukan minimal satu client yang terhubung ke jaringan.
   - Jika tidak ada client yang terhubung, tidak ada target yang dapat di-deauth, sehingga handshake tidak akan berhasil didapatkan.
