# Modul 9: Wireless Adapter

## Memilih Wireless Adapter yang Tepat

- **Definisi**: Wireless adapter adalah perangkat keras (kartu Wi-Fi eksternal atau internal) yang digunakan untuk mengirim dan menerima sinyal Wi-Fi, esensial untuk penetration testing.
- **Kriteria Pemilihan**:
  - **Dukungan Monitor Mode**: Kemampuan untuk menangkap semua paket data di udara tanpa terhubung ke jaringan.
  - **Dukungan Packet Injection**: Kemampuan untuk mengirim paket data palsu atau custom, seperti Deauth frames.
  - **Chipset Kompatibel**: Pilih chipset yang didukung oleh alat seperti Aircrack-ng (misalnya Atheros, Ralink, Realtek).
  - **Frekuensi**: Dukungan 2.4 GHz dan 5 GHz (atau 6 GHz untuk Wi-Fi 6E).
  - **Antena**: Eksternal untuk jangkauan lebih baik, ideal untuk pengujian di area luas.
  - **Kompatibilitas OS**: Pastikan bekerja di Linux (Kali/Parrot) tanpa masalah driver.
  - **Form Factor**: USB untuk portabilitas, PCIe untuk desktop.
- **Kelebihan Adapter Khusus**: Lebih andal untuk pentesting daripada adapter internal laptop yang sering tidak mendukung monitor mode.
- **Contoh Penggunaan**: Adapter USB untuk laptop Kali Linux saat menguji keamanan Wi-Fi di lapangan.

## Chipset yang Support Monitor Mode dan Packet Injection

- **Chipset Populer**:
  - **Atheros AR9271/AR9280**: Dukungan penuh untuk monitor mode dan packet injection. Digunakan di adapter Alfa AWUS036NHA.
  - **Ralink RT3070/RT3572**: Stabil di Linux, mendukung injeksi paket. Contoh: TP-Link TL-WN722N v1.
  - **Realtek RTL8187/RTL8812AU**: Dukungan baik setelah instalasi driver khusus. RTL8812AU mendukung dual-band (2.4/5 GHz).
  - **Realtek RTL8814AU**: Untuk Wi-Fi 5 GHz, mendukung monitor mode dengan driver morrownr.
  - **Mediatek MT7610U**: Dukungan parsial, cocok untuk adapter murah seperti TP-Link Archer T2U.
- **Cara Mengecek Chipset**:
  - Gunakan `lsusb` (untuk USB) atau `lspci` (untuk PCIe) di Linux.
  - Contoh output: `Bus 001 Device 002: ID 0bda:8178 Realtek Semiconductor Corp. RTL8188EUS 802.11n Wireless Network Adapter`.
- **Catatan**: Hindari chipset Broadcom atau Intel internal laptop, karena jarang mendukung fitur pentesting tanpa modifikasi rumit.
- **Rekomendasi**: Prioritaskan Atheros atau Ralink untuk pemula karena driver bawaan di Kali Linux.

## Rekomendasi Adapter (Alfa, TP-Link, dll)

- **Alfa Network**:
  - **AWUS036NHA**: Chipset Atheros AR9271, 2.4 GHz, antena eksternal 5 dBi, harga ~$30-40. Ideal untuk pemula, dukungan injeksi bagus.
  - **AWUS036ACH**: Chipset Realtek RTL8812AU, dual-band (2.4/5 GHz), antena dual 5 dBi, harga ~$50. Cocok untuk Wi-Fi modern.
  - **AWUS036ACS**: Serupa dengan ACH tapi lebih kompak, chipset MediaTek MT7610U.
- **TP-Link**:
  - **TL-WN722N v1**: Chipset Atheros AR9271, 2.4 GHz, antena 4 dBi, harga ~$15. Murah dan andal, tapi hindari versi v2/v3 (chipset berbeda).
  - **Archer T4U v3**: Chipset Realtek RTL8812AU, dual-band, harga ~$25. Memerlukan driver tambahan.
- **Lainnya**:
  - **Panda PAU05**: Chipset Ralink RT5370, mini USB, 2.4 GHz, harga ~$20. Portabel untuk Raspberry Pi.
  - **Edimax EW-7811Un**: Chipset Realtek RTL8188CUS, murah (~$10), tapi dukungan injeksi terbatas.
- **Tips Pembelian**: Beli dari toko terpercaya untuk menghindari versi chipset palsu. Periksa ulasan di forum seperti Reddit r/NetSec.

## Driver Installation (aircrack-ng, rtl8812au, dll)

- **Aircrack-ng Suite**:
  - Sudah pre-installed di Kali Linux. Update dengan `sudo apt update && sudo apt install aircrack-ng`.
  - Digunakan untuk monitor mode (`airmon-ng`) dan injeksi (`aireplay-ng`).
- **Driver RTL8812AU**:
  - Untuk adapter Alfa AWUS036ACH atau TP-Link Archer T4U.
  - **Instalasi di Kali Linux**:
    1. Update sistem: `sudo apt update`.
    2. Install dependensi: `sudo apt install dkms git bc`.
    3. Clone repo: `git clone https://github.com/aircrack-ng/rtl8812au`.
    4. Masuk direktori: `cd rtl8812au`.
    5. Build dan install: `sudo make dkms_install`.
    6. Reboot: `sudo reboot`.
  - Alternatif: Gunakan driver morrownr dari GitHub untuk dukungan lebih baik.
- **Driver Lainnya**:
  - **Ralink RT3070**: Bawaan di kernel Linux, jarang butuh instalasi manual.
  - **Realtek RTL8814AU**: Gunakan repo `aircrack-ng/rtl8814au` serupa dengan RTL8812AU.
- **Troubleshooting**:
  - Jika gagal, blacklist driver bawaan: `echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf`.
  - Verifikasi: `lsmod | grep 8812au`.
- **Catatan**: Instalasi driver memerlukan akses root dan backup sistem.

## Menguji Monitor Mode dan Packet Injection

- **Menguji Monitor Mode**:
  1. Masukkan adapter: `lsusb` untuk konfirmasi.
  2. Kill proses konflik: `sudo airmon-ng check kill`.
  3. Aktifkan monitor mode: `sudo airmon-ng start wlan0` (ganti wlan0 dengan interface adapter).
  4. Verifikasi: `iwconfig` harus menunjukkan mode "Monitor".
  5. Scan jaringan: `sudo airodump-ng wlan0mon` untuk melihat SSID dan BSSID.
  - **Output Sukses**: Daftar AP dan klien muncul.
- **Menguji Packet Injection**:
  1. Dari mode monitor, pilih target: `sudo airodump-ng --bssid [BSSID] --channel [CHANNEL] --essid [SSID] wlan0mon`.
  2. Buka terminal baru: `sudo aireplay-ng --test wlan0mon`.
  3. **Output Sukses**: "Injection is working! Found X AP and X stations" dengan paket dikirim.
  - Jika gagal: Periksa driver, chipset, atau jarak ke target.
- **Alat Tambahan**:
  - **Wireshark**: Capture paket di monitor mode untuk analisis.
  - **Kismet**: Untuk scanning pasif.
- **Keamanan**: Hanya uji di jaringan sendiri atau dengan izin. Gunakan di lingkungan lab untuk menghindari interferensi.
- **Contoh Penggunaan**: Setelah tes sukses, lanjut ke serangan seperti Deauth dengan `aireplay-ng --deauth 10 -a [BSSID] wlan0mon`.
