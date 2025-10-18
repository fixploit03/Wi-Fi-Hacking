# BAGIAN I - PENDAHULUAN & ETIKA

## 1.1 Pendahuluan

### 1.1.1 Latar Belakang: Mengapa Keamanan Wi-Fi Semakin Kritikal?

Di era digitalisasi yang masif, Wi-Fi telah menjadi utility layaknya listrik dan air. Namun, kemudahan ini membawa ancaman serius:
- **Ledakan Perangkat IoT:** Smart TV, kamera IP, smart home devices seringkali memiliki keamanan Wi-Fi yang lemah dan menjadi pintu belakang untuk menyerang jaringan utama.
- **Remote Work & BYOD (Bring Your Own Device):** Karyawan mengakses data sensitif perusahaan dari berbagai jaringan Wi-Fi (rumah, kafe) yang keamanannya tidak terkontrol.
- **Wi-Fi sebagai Initial Attack Vector:** Penyerang sering memanfaatkan kerentanan Wi-Fi sebagai titik masuk pertama untuk menyerang jaringan korporat.
- **Serangan yang Terdemokratisasi:** Tools untuk menyerang Wi-Fi semakin mudah diakses, membuat bahkan script kiddies bisa melakukan serangan berbahaya.

### 1.1.2 Tujuan Materi: The Defender's Mindset

Tujuan utama materi ini bukan untuk membentuk anda menjadi hacker ilegal, tetapi untuk:
- **Memahami Cara Penyerang Bekerja:** Anda tidak dapat mempertahankan apa yang tidak anda pahami. Dengan mengetahui metode serangan, anda dapat membangun pertahanan yang lebih proaktif dan robust.
- **Meningkatkan Postur Keamanan Organisasi:** Sebagai sysadmin atau pentester, skill ini memungkinkan anda secara legal mengaudit dan mengamankan infrastruktur nirkabel perusahaan.
- **Membangun Kesadaran Keamanan (Security Awareness):** Memahami risiko nyata dari penggunaan Wi-Fi publik atau konfigurasi yang ceroboh.

### 1.1.3 Sasaran Pembaca

Materi ini dirancang untuk:
- **Pemula IT** yang ingin mendalami dunia keamanan jaringan.
- **SysAdmin & Network Engineer** yang bertanggung jawab atas infrastruktur jaringan perusahaan.
- **Calon Pentester** yang ingin menambah specialization di bidang wireless security.
- **Enthusiast Teknologi** yang ingin memahami dunia keamanan nirkabel secara mendalam.

### 1.1.4 Ringkasan Struktur Pembahasan (Roadmap)

Materi akan dibagi dalam alur logis sebagai berikut:
- **Fundamental & Etika:** Pondasi terpenting.
- **Setup Lab & Tools:** Menyiapkan lingkungan praktik yang aman dan legal.
- **Wireless Reconnaissance:** Memetakan lingkungan Wi-Fi dan gathering intelligence.
- **Serangan terhadap Enkripsi:** Mengetahui kelemahan WEP, WPA/WPA2, WPA3.
- **Advanced Attack Vectors:** Evil Twin, WPS Pixie Dust, dll.
- **Post-Exploitation:** Apa yang dilakukan setelah berhasil masuk.
- **Defense & Hardening:** Teknik untuk mengamankan jaringan Wi-Fi.

## 1.2 Etika, Hukum, dan Tanggung Jawab

### 1.2.1 Mengapa Etika Penting dalam Keamanan Siber?

Keamanan siber adalah disiplin ilmu yang penuh dengan kekuatan (power). Setiap tool dan teknik yang akan anda pelajari dapat digunakan untuk melindungi atau merusak. **Etika adalah kompas yang membedakan Security Professional dari penjahat cyber**. Tanpa etika, pengetahuan yang kuat justru menjadi ancaman bagi masyarakat.

### 1.2.2 Hukum & Regulasi di Indonesia

- **Undang-Undang Informasi dan Transaksi Elektronik (UU ITE):**
  - **Pasal 30:** "Setiap Orang dengan sengaja dan tanpa hak atau melawan hukum mengakses Komputer dan/atau Sistem Elektronik milik Orang lain dengan cara apa pun." **Ini adalah pasal kunci yang bisa menjerat aktivitas hacking tanpa izin.**
  - **Pasal 32:** Melindungi kerahasiaan data dan informasi elektronik.
  - **Intepretasi:** Melakukan scanning, probing, atau connecting ke jaringan Wi-Fi orang lain **TANPA IZIN TERTULIS** yang jelas dapat dijerat dengan pasal-pasal ini, meskipun tujuan anda hanya **coba-coba** atau **belajar**.
- **Sertifikasi & Kode Etik Global:**
  - Sertifikasi seperti CEH (Certified Ethical Hacker) dan OSCP menekankan **kode etik yang ketat**. Intinya: **Jangan pernah mengakses sistem yang bukan milik anda atau tanpa izin eksplisit.**

### 1.2.3 Disclaimer & Penafian Tanggung Jawab

**PERINGATAN KERAS DAN JELAS:** Penulis dan pembuat materi ini **TIDAK BERTANGGUNG JAWAB** atas segala penyalahgunaan ilmu dan teknik yang dibagikan. Setiap aktivitas yang anda lakukan adalah **TANGGUNG JAWAB ANDA SENDIRI SECARA HUKUM**. Materi ini disusun semata-mata untuk tujuan edukasi dan pengetesan keamanan dalam lingkungan yang terkontrol dan telah mendapatkan izin.

### 1.2.4 Prinsip Responsible Disclosure

Ketika anda menemukan kerentanan (baik disengaja atau tidak), ikuti prinsip ini:
- **Jangan Eksploitasi atau Sebarkan Secara Publik.**
- **Dokumentasikan** dengan jelas kerentanan dan langkah reproduksinya.
- **Laporkan Secara Privat** kepada pemilik sistem/organisasi yang bersangkutan.
- **Beri Waktu** yang cukup bagi mereka untuk memperbaiki kerentanan sebelum informasi tersebut dibagikan lebih luas (jika perlu).

### 1.2.5 Larangan & Aktivitas Tidak Diperbolehkan

- **MELAKUKAN TESTING TANPA IZIN:** Ini adalah aktivitas ilegal, titik.
- **MENYERANG JARINGAN PRODUKSI:** Jaringan yang digunakan publik atau bisnis.
- **MENDENGARKAN (EAVESDROPPING) TRAFFIC ORANG LAIN.**
- **MENYUSUPKAN (INJECTING) PAKET DATA BERBAHAYA.**
- **MENGUBAH KONFIGURASI ATAU DATA MILIK ORANG LAIN.**

**Studi Kasus: Hacker Etis vs Black Hat**
- **Hacker Etis (White Hat):** Seorang sysadmin yang dipekerjakan perusahaan untuk melakukan penetration testing terhadap jaringan Wi-Fi mereka sendiri. Ia memiliki surat perintah (engagement letter), bekerja dalam scope yang disepakati, dan membuat laporan untuk perbaikan.
- **Black Hat:** Seorang individu yang menggunakan teknik yang sama untuk menyusup ke Wi-Fi tetangga, mencuri bandwidth, atau mencuri data pribadi. Aktivitas ini ilegal dan dapat berakhir dengan hukuman penjara.

### 1.2.6 Checklist Persiapan Legal (Sebelum Melakukan Apapun)

Sebelum anda memulai praktik di lingkungan nyata (bukan lab pribadi), **PASTIKAN** anda memiliki:
1. Izin Tertulis (Written Authorization): Surat atau dokumen yang menyatakan anda diizinkan untuk melakukan pengetesan keamanan. Ini adalah **surat sakti** anda.
2. **Scope yang Jelas:** Jaringan, sistem, dan metode apa saja yang boleh dan tidak boleh di tes  Misalnya: **Hanya test terhadap SSID `Corp_Guest`, dilarang melakukan DoS.**
3. **NDA (Non-Disclosure Agreement):** Jika diperlukan, untuk melindungi informasi rahasia perusahaan.
4. **Rencana Komunikasi & Eskalasi:** Siapa yang harus dihubungi jika ditemukan kerentanan kritis atau jika terjadi insiden (seperti jaringan down tidak disengaja).
