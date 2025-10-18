# Bagian 0 - Prasyarat & Panduan Penggunaan Materi

## 0.1 Sasaran Pembaca & Prasyarat Teknis

**Siapa yang Cocok Belajar Materi Ini?**
- **Pentester Pemula:** Yang sudah kenal dasar-dasar keamanan siber dan ingin memperluas skill ke jaringan nirkabel.
- **Sysadmin/Network Admin:** Yang ingin memahami kerentanan di infrastruktur Wi-Fi perusahaan untuk mengamankannya.
- **Enthusiast IT & Keamanan Jaringan:** Siapa pun yang penasaran dan ingin tahu bagaimana keamanan Wi-Fi benar-benar bekerja di lapangan.

**Prasyarat Teknis (Hardware & Software):**
- **Komputer/Laptop:** Disarankan RAM minimal 8 GB. Prosesor modern (Intel i5 atau setara ke atas). Kenapa? Karena kita akan menjalankan Virtual Machine (VM) dan proses cracking yang cukup berat.
- **Sistem Operasi Host:** Bisa Windows, macOS, atau Linux. Tapi kita akan mostly bekerja di dalam Virtual Machine.
- **Koneksi Internet:** Untuk mengunduh tool, package, dan update.
- **Wi-Fi Adapter Eksternal (WAJIB):** Ini adalah komponen paling kritis. Kartu Wi-Fi internal laptop kebanyakan tidak bisa melakukan operasi yang kita butuhkan (seperti monitor mode dan packet injection).
  - **Rekomendasi Gold Standard:** Alfa AWUS036ACH (Dual-Band, AC1200) atau model lama seperti Alfa AWUS036NHA.
  - **Alternatif Lain:** TP-Link TL-WN722N (Pastikan versi v1, karena v2/v3 kurang support).

## 0.2 Cara Menggunakan Materi Ini

Materi ini dirancang dengan dua pendekatan:
1. **Alur Linier (Direkomendasikan untuk Pemula):**
  - Ikuti materi dari Bagian 1 sampai selesai secara berurutan. Setiap bagian membangun fondasi untuk bagian selanjutnya. Jangan loncat-loncat dulu kalau masih baru.
  - **Learning Path yang disarankan:** Dasar Teori -> Setup Lab -> Reconnaissance -> Serangan Pasif -> Serangan Aktif -> Pertahanan.
2. **Alur Modular (Untuk yang Sudah Pengalaman):**
 - Jika kamu sudah paham dasar-dasar tertentu, kamu bisa langsung menuju ke bagian yang spesifik, misalnya langsung ke **WPA/WPA2 Handshake Capture**.
 - Gunakan daftar isi sebagai **cheat sheet** untuk merujuk teknik tertentu.

## 0.3 Skill yang Direkomendasikan Sebelum Mulai

Agar proses belajar lebih mulus, sangat disarankan kamu sudah memiliki:

**Dasar-Dasar Linux dan Command Line Interface (CLI):**
- Navigasi direktori (`cd`, `ls`, `pwd`).
- Manipulasi file (`cp`, `mv`, `rm`, `cat`).
- Understanding permission (`chmod`).
- Kita akan banyak bekerja di terminal Kali Linux.

**Pemahaman Fundamental Jaringan (TCP/IP):**
- Apa itu IP Address, MAC Address, Gateway, DNS.
- Memahami model OSI/TCP (minimal layer 2 - Data Link dan layer 3 - Network).

**Konsep Dasar Keamanan Informasi:**
- Apa itu vulnerability, exploit, dan payload.
- Etika dalam penetration testing.

## 0.4 Daftar Software & Akun yang Diperlukan

**1. Virtualization Software:**
- Oracle VM VirtualBox (Gratis, recommended untuk pemula).
- VMware Workstation Pro/Player (Player versi gratisnya cukup).

**2. Kali Linux:**
- Download image ISO-nya langsung dari website resmi [kali.org](https://www.kali.org/).
- Ini adalah distro Linux yang berisi semua tool penetration testing yang kita butuhkan, pre-installed.

**3. Wi-Fi Adapter Eksternal:** Seperti yang sudah disebutkan di [0.1](https://github.com/fixploit03/Pentest-WiFi/tree/main/catatan/bagian%200#01-sasaran-pembaca--prasyarat-teknis).

**4. GitHub Account (Opsional tapi Direkomendasikan):**
- Banyak tool tambahan dan wordlist tersedia di GitHub.

**5. Wordlists (Kumpulan Kata Sandi untuk Cracking):**
- `rockyou.txt`: Sudah included di Kali Linux.
- Sebagai alternatif atau tambahan, kamu bisa download wordlist lain seperti `SecLists`.
