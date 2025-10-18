# Proses Koneksi Wi-Fi

Proses koneksi Wi-Fi berdasarkan standar IEEE 802.11, yang mengatur bagaimana perangkat (seperti ponsel atau laptop) terhubung ke Access Point (AP), yaitu router Wi-Fi. Secara garis besar, proses ini terbagi jadi tiga tahap utama: **Discovery (Pencarian Jaringan)**, **Authentication (Otentikasi)**, dan **Association (Asosiasi)**. Setelah itu, kalau pakai enkripsi seperti WPA2, ada tambahan **4-Way Handshake** buat ngatur kunci enkripsi..

## 1. Tahap Discovery: Mencari dan Menemukan Jaringan

Ini adalah langkah awal di mana perangkat client (misalnya, HP kamu) nyari jaringan Wi-Fi yang tersedia. Bayangin kayak kamu lagi nyari sinyal radio di mobil, perangkat harus **mendengar** atau **bertanya** ke sekitar.
- **Beacon Frames**: AP secara rutin mengirim sinyal beacon (seperti iklan) setiap 100 milidetik. Beacon ini berisi info dasar seperti nama jaringan (SSID), channel yang dipakai, tipe enkripsi (misalnya, WPA2), dan kemampuan AP lainnya. Ini bikin perangkat client bisa liat daftar Wi-Fi di sekitar tanpa harus connect dulu.  
- **Probe Request dan Response**: Kalau perangkat client lagi aktif nyari, dia kirim Probe Request (seperti **Hei, ada jaringan namanya `RumahWifi` gak?**). AP yang cocok bakal balas dengan Probe Response, yang mirip beacon tapi lebih spesifik buat permintaan itu.

#### 2. Tahap Authentication: Verifikasi Identitas

Setelah nemu jaringan, perangkat client harus **buktiin** kalau dia boleh connect. Ini kayak pintu masuk ke klub, kamu harus tunjukin ID atau password sederhana.

Ada dua tipe authentication utama di Wi-Fi lama (802.11 legacy):
- **Open Authentication**: Gak ada verifikasi sama sekali. Siapa aja bisa connect, tapi kalau ada enkripsi (seperti WEP/WPA), data tetep dilindungi. Ini paling gampang, tapi rentan karena gak ada cek awal.
- **Shared Key Authentication**: Pakai kunci bersama (shared key) buat verifikasi. Prosesnya:
  1. Client kirim Authentication Request.
  2. AP balas dengan challenge text (teks acak yang dienkripsi pakai shared key).
  3. Client enkripsi challenge itu dan kirim balik.
  4. AP cek kalau cocok, authentication sukses.

Di Wi-Fi modern (WPA2/WPA3), authentication digabung dengan proses enkripsi nanti. Shared Key jarang dipakai sekarang karena lemah (misalnya, rentan ke serangan replay attack).

#### 3. Tahap Association: Menghubungkan dan Mendapatkan Alamat

Setelah authentication sukses, client minta **gabung** ke jaringan. Ini kayak daftar masuk ke kelas setelah verifikasi.
- **Association Request**: Client kirim request ke AP, berisi info kemampuan client (seperti kecepatan support, mode enkripsi).
- **Association Response**: AP balas dengan status (sukses/gagal) dan Association ID (AID), yang kayak nomor kursi buat client di jaringan.

Setelah ini, klien udah **terhubung** secara fisik, tapi belum bisa kirim data besar. Selanjutnya, client biasanya minta IP address via DHCP dari AP atau router.

#### 4. Tambahan: 4-Way Handshake (untuk Enkripsi WPA/WPA2)

Kalau jaringan pakai enkripsi PSK (Pre-Shared Key, seperti password Wi-Fi), ada proses tambahan setelah association buat ngatur kunci enkripsi data. Ini penting karena tanpa ini, data bisa dibaca orang lain.

Proses 4-Way Handshake (berdasarkan EAPOL frames):
1. **Message 1**: AP kirim ANonce (nomor acak dari AP) ke client.
2. **Message 2**: Client balas dengan SNonce (nomor acak dari klien) dan MIC (Message Integrity Code) buat verifikasi.
3. **Message 3**: AP kirim GTK (Group Temporal Key) buat enkripsi broadcast, plus MIC.
4. **Message 4**: Client konfirmasi semuanya OK.

Dari nonce ini, keduanya hitung PTK (Pairwise Transient Key) buat enkripsi unicast, dan GTK buat multicast. Semua ini pakai password (PSK) sebagai basis.

#### Catatan Tambahan dan Best Practices
- **Frame Management**: Semua proses ini pakai Management Frames (beacon, probe, dll.) yang gak dienkripsi, jadi rentan ke eavesdropping atau forgery.
- **Kelemahan Umum**: Wi-Fi rentan ke serangan karena wireless – siapa aja dalam jangkauan bisa "dengar". Pen-tester fokus di sini buat identifikasi vulnerability seperti weak encryption atau misconfiguration.
- **Alat Pendukung**: Buat belajar, kamu bisa pakai tools open-source seperti Wireshark buat capture frame (mode monitor), atau Aircrack-ng suite buat simulasi – tapi hanya di lab sendiri atau dengan izin.
- **Tips Aman**: Selalu pakai WPA3 kalau bisa, hide SSID (tapi gak 100% aman), dan monitor log AP buat deteksi aktivitas aneh.

Itu dia penjelasan lengkap buat proses koneksi Wi-Fi. Kalau ada yang kurang jelas atau mau lanjut ke bagian lain, bilang aja! Pastiin praktek di environment legal ya, seperti setup lab sendiri dengan Kali Linux. Terima kasih! 😊
