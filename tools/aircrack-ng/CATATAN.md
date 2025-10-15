## Catatan Penting

1. WEP:
   - Agar serangan ARP Replay berhasil, minimal harus ada satu client yang terhubung ke Wi-Fi.
   - Tanpa adanya client yang terhubung, tidak ada traffic ARP yang dapat ditangkap dan di-replay, sehingga serangan kemungkinan besar akan gagal.
2. Capture Handshake: 
   - Untuk capture handshake, diperlukan minimal satu client yang terhubung ke Wi-Fi.
   - Jika tidak ada client yang terhubung, tidak ada target yang dapat di-deauth, sehingga handshake tidak akan berhasil didapatkan.
