# Modul 8: Persiapan Lab Environment

## Memilih OS untuk Penetration Testing (Kali Linux, Parrot OS)

- **Kali Linux**:
  - **Definisi**: Distribusi Linux berbasis Debian yang dirancang khusus untuk penetration testing dan analisis keamanan.
  - **Kelebihan**:
    - Dilengkapi dengan ratusan alat keamanan pre-installed seperti Metasploit, Nmap, dan Aircrack-ng.
    - Dukungan komunitas besar dan pembaruan rutin oleh Offensive Security.
    - Antarmuka ramah pengguna untuk pemula dan profesional.
  - **Kekurangan**:
    - Tidak cocok untuk penggunaan sehari-hari sebagai OS utama karena fokus pada keamanan.
    - Membutuhkan pengetahuan Linux dasar untuk penggunaan optimal.
  - **Contoh Penggunaan**: Pengujian keamanan Wi-Fi, analisis jaringan, dan eksploitasi kerentanan.

- **Parrot OS**:
  - **Definisi**: Distribusi Linux berbasis Debian untuk penetration testing, privasi, dan pengembangan perangkat lunak.
  - **Kelebihan**:
    - Menawarkan dua edisi: Security (untuk pentesting) dan Home (untuk penggunaan umum).
    - Lebih ringan dibandingkan Kali Linux, cocok untuk perangkat dengan sumber daya terbatas.
    - Fitur privasi tambahan seperti AnonSurf untuk anonymitas.
  - **Kekurangan**:
    - Koleksi alat lebih kecil dibandingkan Kali Linux.
    - Komunitas lebih kecil, dokumentasi kurang luas.
  - **Contoh Penggunaan**: Pengujian keamanan jaringan, forensik digital, dan pengembangan perangkat lunak aman.

- **Rekomendasi**:
  - Pilih **Kali Linux** untuk lab pentesting dengan alat lengkap dan dukungan komunitas.
  - Pilih **Parrot OS** jika membutuhkan OS yang lebih ringan atau untuk penggunaan ganda (pentesting dan privasi).

## Virtual Machine Setup

- **Definisi**: Menjalankan OS pentesting (seperti Kali Linux atau Parrot OS) dalam lingkungan virtual menggunakan perangkat lunak seperti VMware atau VirtualBox.
- **Langkah-langkah Pengaturan**:
  1. **Unduh Perangkat Lunak VM**: Install VMware Workstation Player (gratis untuk penggunaan non-komersial) atau VirtualBox.
  2. **Unduh ISO OS**: Dapatkan file ISO resmi dari situs Kali Linux (kali.org) atau Parrot OS (parrotsec.org).
  3. **Buat VM Baru**:
     - Alokasikan minimal 2 CPU, 4 GB RAM, dan 20 GB penyimpanan.
     - Pilih file ISO sebagai media instalasi.
  4. **Konfigurasi Jaringan**:
     - Gunakan mode NAT untuk akses internet aman.
     - Gunakan mode Bridge untuk pengujian jaringan langsung (berhati-hati di jaringan publik).
  5. **Pasang OS**: Ikuti wizard instalasi OS dalam VM.
  6. **Perbarui Sistem**: Jalankan `sudo apt update && sudo apt upgrade` untuk memastikan alat dan sistem terbaru.
- **Kelebihan**:
  - Isolasi dari sistem utama, mengurangi risiko kerusakan.
  - Mudah untuk mengembalikan snapshot jika terjadi kesalahan.
- **Kekurangan**:
  - Kinerja lebih lambat dibandingkan instalasi langsung.
  - Beberapa alat (misalnya Wi-Fi pentesting) memerlukan adapter USB Wi-Fi dengan dukungan monitor mode.
- **Contoh Penggunaan**: Menjalankan Kali Linux di VirtualBox untuk simulasi pengujian keamanan Wi-Fi.

## Dual Boot Considerations

- **Definisi**: Menginstall OS pentesting (seperti Kali Linux atau Parrot OS) bersama OS utama (misalnya Windows) pada perangkat keras yang sama.
- **Pertimbangan**:
  - **Partisi Disk**: Sisakan ruang kosong (minimal 20-30 GB) untuk OS pentesting. Gunakan alat seperti GParted untuk mengelola partisi.
  - **Bootloader**: Gunakan GRUB (default di Kali/Parrot) untuk memilih OS saat booting.
  - **Backup Data**: Cadangkan data penting sebelum mengubah partisi untuk mencegah kehilangan data.
  - **Kinerja**: Kinerja lebih baik dibandingkan VM karena akses langsung ke perangkat keras.
  - **Keamanan**: Jangan gunakan dual boot di komputer utama untuk penggunaan sehari-hari, karena OS pentesting tidak dioptimalkan untuk privasi atau keamanan harian.
- **Kelebihan**:
  - Akses penuh ke perangkat keras, mendukung alat seperti monitor mode tanpa adapter tambahan.
  - Kinerja lebih cepat untuk tugas intensif seperti cracking kata sandi.
- **Kekurangan**:
  - Risiko kesalahan partisi dapat merusak OS utama.
  - Memerlukan reboot untuk beralih antar OS.
- **Contoh Penggunaan**: Dual boot Kali Linux dengan Windows untuk pengujian keamanan Wi-Fi menggunakan kartu jaringan internal.

## Hardware Requirements

- **Minimum untuk VM**:
  - **CPU**: Prosesor multi-core (Intel i5/AMD Ryzen 5 atau lebih tinggi) dengan dukungan virtualisasi (VT-x/AMD-V).
  - **RAM**: 8 GB (4 GB dialokasikan untuk VM).
  - **Penyimpanan**: 20 GB ruang kosong (SSD lebih disukai untuk kinerja).
  - **Jaringan**: Kartu Wi-Fi dengan dukungan monitor mode (misalnya chipset Atheros AR9271 atau Ralink RT3070) untuk pengujian Wi-Fi.
- **Rekomendasi untuk Dual Boot atau Bare Metal**:
  - **CPU**: Intel i7/AMD Ryzen 7 untuk tugas berat seperti cracking atau analisis jaringan.
  - **RAM**: 16 GB atau lebih untuk menjalankan beberapa alat secara bersamaan.
  - **Penyimpanan**: 50 GB atau lebih (SSD untuk kecepatan).
  - **Jaringan**: Adapter Wi-Fi USB eksternal (misalnya Alfa AWUS036NHA) untuk fleksibilitas.
  - **GPU (Opsional)**: GPU kuat (misalnya NVIDIA GTX/RTX) untuk cracking kata sandi dengan alat seperti Hashcat.
- **Tambahan**:
  - **Monitor Eksternal**: Untuk menampilkan beberapa alat sekaligus.
  - **Baterai atau UPS**: Untuk mencegah gangguan selama pengujian.
- **Contoh Penggunaan**: Laptop dengan Intel i7, 16 GB RAM, dan Alfa AWUS036NHA untuk pengujian keamanan Wi-Fi di Kali Linux.
