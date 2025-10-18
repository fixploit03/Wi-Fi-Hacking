# Modul 7: Frame dan Packet Structure

## Management Frames (Beacon, Probe, Auth, Deauth, Disassoc)

Management Frames digunakan untuk mengelola koneksi dan komunikasi dalam jaringan Wi-Fi sesuai standar IEEE 802.11.

- **Beacon Frame**:
  - Dikirim secara periodik oleh Access Point (AP) untuk mengumumkan keberadaan jaringan.
  - Berisi informasi seperti SSID, BSSID, channel, dan parameter keamanan (misalnya WPA2).
  - **Fungsi**: Membantu klien menemukan jaringan dan sinkronisasi waktu.
  - **Contoh Penggunaan**: Perangkat mendeteksi jaringan Wi-Fi di daftar jaringan.

- **Probe Frame**:
  - **Probe Request**: Dikirim oleh klien untuk mencari jaringan Wi-Fi (aktif scanning).
  - **Probe Response**: Dikirim oleh AP sebagai respons, berisi informasi serupa dengan Beacon Frame.
  - **Fungsi**: Memungkinkan klien menemukan AP tanpa menunggu Beacon.
  - **Contoh Penggunaan**: Perangkat mencari SSID tertentu saat scanning.

- **Authentication Frame**:
  - Digunakan untuk proses autentikasi awal antara klien dan AP.
  - Mendukung metode seperti Open System atau Shared Key (WEP).
  - **Fungsi**: Memverifikasi identitas klien sebelum asosiasi.
  - **Contoh Penggunaan**: Autentikasi sebelum klien bergabung ke jaringan.

- **Deauthentication Frame (Deauth)**:
  - Dikirim oleh AP atau klien untuk mengakhiri sesi autentikasi.
  - **Fungsi**: Memutuskan koneksi, sering digunakan untuk manajemen jaringan atau serangan (misalnya Deauth attack).
  - **Contoh Penggunaan**: AP memutuskan klien yang tidak sah.

- **Disassociation Frame (Disassoc)**:
  - Digunakan untuk mengakhiri asosiasi antara klien dan AP tanpa menghapus autentikasi.
  - **Fungsi**: Memungkinkan klien beralih ke AP lain (roaming) atau mengakhiri koneksi.
  - **Contoh Penggunaan**: Klien meninggalkan jaringan sementara.

## Control Frames (RTS, CTS, ACK)

Control Frames mengatur akses ke media nirkabel untuk mencegah tabrakan data.

- **RTS (Request to Send)**:
  - Dikirim oleh klien untuk meminta izin mengirim data ke AP.
  - **Fungsi**: Mengurangi risiko tabrakan di jaringan sibuk (CSMA/CA).
  - **Contoh Penggunaan**: Klien meminta izin sebelum mengirim data besar.

- **CTS (Clear to Send)**:
  - Dikirim oleh AP sebagai respons terhadap RTS, memberikan izin kepada klien untuk mengirim.
  - **Fungsi**: Mengonfirmasi bahwa saluran aman untuk transmisi.
  - **Contoh Penggunaan**: AP menyetujui permintaan RTS dari klien.

- **ACK (Acknowledgment)**:
  - Dikirim untuk mengonfirmasi penerimaan data yang sukses.
  - **Fungsi**: Memastikan pengiriman data yang andal, meminta pengiriman ulang jika gagal.
  - **Contoh Penggunaan**: AP mengirim ACK setelah menerima Data Frame dari klien.

## Data Frames

- **Definisi**: Frame yang membawa data aktual (payload) antara klien dan AP.
- **Karakteristik**:
  - Berisi informasi aplikasi seperti halaman web, file, atau streaming.
  - Dapat dienkripsi menggunakan protokol seperti WPA2/WPA3 (AES).
  - Mendukung QoS (Quality of Service) untuk memprioritaskan jenis data tertentu (misalnya video).
- **Fungsi**: Mengangkut data pengguna melalui jaringan Wi-Fi.
- **Contoh Penggunaan**: Mengirim email atau streaming video melalui Wi-Fi.

## Frame Header Analysis

Frame Wi-Fi (Management, Control, dan Data) memiliki struktur header berdasarkan standar IEEE 802.11. Komponen utama header meliputi:

- **Frame Control (2 bytes)**:
  - Menentukan jenis frame (Management, Control, Data) dan subtipe (misalnya Beacon, RTS).
  - Berisi informasi seperti Protocol Version, To DS/From DS, dan Power Management.
- **Duration/ID (2 bytes)**:
  - Menunjukkan durasi reservasi saluran (untuk Control Frames) atau ID asosiasi (untuk Management Frames).
- **Address Fields (6-18 bytes)**:
  - Berisi alamat MAC seperti:
    - **Destination Address (DA)**: Tujuan akhir frame.
    - **Source Address (SA)**: Pengirim asli frame.
    - **BSSID**: Identifikasi AP.
    - **Transmitter/Receiver Address (TA/RA)**: Digunakan dalam WDS atau Mesh.
- **Sequence Control (2 bytes)**:
  - Mengelola urutan frame dan mencegah duplikasi.
- **QoS Control (2 bytes, opsional)**:
  - Digunakan untuk mengatur prioritas data (misalnya untuk VoIP atau video).
- **FCS (Frame Check Sequence, 4 bytes)**:
  - Checksum untuk mendeteksi kesalahan dalam transmisi.

**Contoh Penggunaan**: Analisis header dengan alat seperti Wireshark untuk debugging atau pengujian keamanan.

## 4-Way Handshake Process

- **Definisi**: Proses dalam WPA/WPA2/WPA3 untuk menghasilkan kunci enkripsi dinamis antara klien dan AP.
- **Langkah-langkah**:
  1. **Pesan 1 (AP ke Klien)**: AP mengirim Anonce (nonce acak) ke klien.
  2. **Pesan 2 (Klien ke AP)**: Klien mengirim Snonce (nonce klien) dan MIC (Message Integrity Code) untuk memverifikasi integritas.
  3. **Pesan 3 (AP ke Klien)**: AP mengirim kunci grup (GTK) untuk komunikasi multicast dan mengonfirmasi instalasi kunci.
  4. **Pesan 4 (Klien ke AP)**: Klien mengonfirmasi instalasi kunci, menyelesaikan handshake.
- **Fungsi**:
  - Menghasilkan PTK (Pairwise Transient Key) untuk enkripsi unicast.
  - Mendistribusikan GTK (Group Temporal Key) untuk enkripsi multicast.
  - Memastikan keamanan dengan verifikasi mutual authentication.
- **Kelebihan**: Memberikan kunci dinamis yang sulit diretas dibandingkan kunci statis (WEP).
- **Kekurangan**: Rentan terhadap serangan seperti KRACK (WPA2) jika tidak ditambal.
- **Contoh Penggunaan**: Proses otomatis saat perangkat terhubung ke jaringan WPA2/WPA3.
