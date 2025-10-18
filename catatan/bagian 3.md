Bagian III — Protokol Keamanan & Enkripsi Wi-Fi

Baik bang — berikut materi lengkap, jelas, dan mudah dipahami tentang protokol keamanan & enkripsi Wi-Fi. Saya susun terstruktur: teori, arsitektur, kelemahan, contoh serangan penting, dan rekomendasi best-practice. Saya sertakan referensi penting di tiap bagian untuk baca lebih lanjut.

3.1 Open Network — Risiko & Penggunaan Sah

Definisi: jaringan tanpa enkripsi/otentikasi (SSID terbuka).
Kapan dipakai secara sah: hotspot publik (kafe, bandara) untuk akses cepat, captive portal (login lewat web).
Risiko utama:

Semua trafik dapat dipantau (sniffing) oleh siapa saja di jangkauan — termasuk kredensial HTTP, cookie, metadata. 
dl.aircrack-ng.org

Serangan man-in-the-middle (MITM) dan injeksi konten (mis. memodifikasi halaman web).

Pengguna rentan terhadap jaringan palsu (evil twin) yang meniru SSID publik.
Catatan praktis: jangan pakai open network untuk aktivitas sensitif; gunakan VPN jika terpaksa.

3.2 WEP — Arsitektur, IV/RC4, dan Kelemahan

Ringkasan arsitektur: WEP menggunakan RC4 (stream cipher) dengan kunci gabungan: IV (24 bit) + shared secret key. IV ditransmisikan jelas pada setiap frame. 
ResearchGate
+1

Mengapa lemah (inti masalah):

IV pendek & reuse: 24 bit IV menyebabkan pengulangan IV pada trafik yang relatif kecil → memungkinkan analisis statistik untuk memulihkan kunci. 
ResearchGate

Kerentanan dalam RC4 KSA: variasi IV tertentu bocorkan info internal RC4 → serangan FMS / Koreksi (PTW) memulihkan kunci lebih cepat. 
dl.aircrack-ng.org
+1

Integritas lemah: WEP menggunakan CRC32 (bukan cryptographic MAC), sehingga mudah dimanipulasi. 
ResearchGate

Konklusi: jangan pakai WEP di jaringan modern — dianggap broken dan tidak aman.

3.3 WPA & WPA2 — Mekanisme Utama & Kelemahan
3.3.1 WPA-Personal (TKIP): Mekanisme & kelemahan

Mekanisme singkat: WPA (legacy) memperkenalkan TKIP untuk memperbaiki WEP tanpa butuh hardware baru; TKIP tetap menggunakan RC4 tetapi menambahkan per-packet key mixing, rekeying, dan MIC (Michael). 
papers.mathyvanhoef.com

Kelemahan praktis:

Serangkaian serangan (Beck-Tews, Ohigashi-Morii, Michael attack) memungkinkan injeksi paket dan, dalam kondisi tertentu, dekripsi sebagian lalu lintas atau DoS. TKIP kini dinyatakan usang. 
Information Security Stack Exchange
+1

Rekomendasi: hindari TKIP/WPA (use WPA2/AES or WPA3).

3.3.2 WPA2-Personal (AES/CCMP): 4-way handshake, PMK/PTK

Konsep kunci:

PSK (Pre-Shared Key): kata sandi jaringan (passphrase) yang dipakai untuk menghasilkan PMK (Pairwise Master Key).

4-way handshake: mekanisme untuk menegosiasikan PTK (Pairwise Transient Key) dari PMK + nonce (ANonce dari AP, SNonce dari client) + MAC addresses. PTK digunakan untuk enkripsi unicast; GTK untuk multicast/broadcast. 
NetworkLessons.com
+1

Catatan serangan: WPA2-PSK dapat diserang jika:

Passphrase lemah → offline dictionary/brute-force setelah menangkap 4-way handshake.

Implementasi handshakes/leak bisa memungkinkan relay/attackers meniru atau mendapatkan handshake. 
NetworkLessons.com

3.3.3 WPA-Enterprise: EAP types & RADIUS flow

Gambaran: WPA-Enterprise menggunakan EAP (Extensible Authentication Protocol) dengan backend RADIUS/AAA untuk otentikasi per-user (bukan shared PSK).
Tipe EAP umum: EAP-TLS (sertifikat), PEAP, EAP-TTLS, EAP-MSCHAPv2 (berbeda tingkat keamanan). EAP-TLS adalah yang paling aman jika dikelola dengan benar (sertifikat).
Flow singkat: supplicant ↔ AP (authenticator) ↔ RADIUS (authentication server). AP meneruskan EAP messages ke RADIUS, RADIUS memutuskan otorisasi.
Kelemahan operasional: konfigurasi sertifikat/chain yang salah, penggunaan protokol EAP lemah (mis. MSCHAPv2 tanpa proteksi) → dapat dieksploitasi. 
securew2.com

3.4 WPA3 — Fitur & Masalah yang Perlu Dipahami
3.4.1 WPA3-Personal (SAE) — apa beda dengan PSK, anti-downgrade

SAE (Simultaneous Authentication of Equals) menggantikan PSK. SAE adalah metode exchange berbasis password yang tahan terhadap offline dictionary—artinya attacker tidak dapat melakukan brute-force offline hanya dari menangkap handshake. SAE memakai Dragonfly/Dragonfly key exchange. 
wpa3.mathyvanhoef.com

Keunggulan: per-session unique keys, forward secrecy untuk passphrase, lebih tahan brute-force offline—jika implementasi benar.
Risiko/realita: beberapa implementasi rentan terhadap side-channel, timing leaks, atau downgrade yang memungkinkan serangan (mis. Dragonblood research). Artinya WPA3 lebih kuat secara desain, tetapi implementasi/praktik buruk tetap membuka celah. 
wpa3.mathyvanhoef.com
+1

3.4.2 WPA3-Enterprise features

Fitur tambahan: tingkat keamanan lebih tinggi (mis. mandatory 192-bit suite pada mode tertentu), proteksi EAP yang ditingkatkan. Namun organisasi tetap harus memastikan proper provisioning sertifikat dan update firmware.

3.5 WPS — Mode/PIN & Kerentanan (Pixie Dust)

Ringkasan: WPS (Wi-Fi Protected Setup) dimaksudkan memudahkan setup via PIN 8 digit atau push-button. Mode PIN adalah yang bermasalah.
Kerentanan Pixie Dust (2014): pada beberapa implementasi, proses pertukaran PIN bocor melalui cara kriptografis lemah (kekeliruan di RNG/nonce) sehingga PIN bisa dipulihkan secara offline tanpa mencoba semua kombinasi. Akibatnya attacker bisa mendapatkan akses ke jaringan tanpa mengetahui passphrase. Masalah ini masih sering ditemukan di perangkat lama atau firmware tak terpatch. 
Industrial Cyber
+1

Rekomendasi: non-aktifkan WPS di router/AP bila tidak diperlukan; update firmware jika vendor merilis patch.

3.6 Ancaman Evolusi — Dragonblood, Side-Channel, Downgrade

Dragonblood (WPA3): kumpulan temuan yang menunjukkan beberapa kelemahan pada Dragonfly/SAE, termasuk leak melalui timing/cache, dan downgrade paths. Peneliti menunjukkan serangan yang memungkinkan pemulihan password dalam kondisi tertentu atau pemaksaan downgrade. Ini menegaskan bahwa desain protokol saja tidak cukup — implementasi dan patching sangat krusial. 
wpa3.mathyvanhoef.com
+1

Side-channel & timing attacks: kelemahan microarchitectural (cache timing) atau respons berbeda pada implementasi dapat bocorkan informasi kunci.
Downgrade attacks: attacker memaksa kedua pihak menggunakan grup kriptografi yang lebih lemah atau versi protokol yang rentan. Selalu waspadai legacy compatibility yang memaksa downgrade. 
wpa3.mathyvanhoef.com

3.7 Key Management & Best Practices Deployment

Berikut ringkasan praktis yang harus diterapkan saat mendesain/men-deploy jaringan Wi-Fi aman:

Prinsip Umum

Pakai WPA3 bila memungkinkan. Jika sebagian perangkat tidak mendukung WPA3, gunakan WPA2-AES (CCMP) dengan mode Enterprise untuk lingkungan organisasi. 
securew2.com
+1

Matikan WEP/TKIP/WPA-TKIP dan WPS PIN. Jangan biarkan mode legacy aktif. 
papers.mathyvanhoef.com
+1

Gunakan WPA-Enterprise (EAP-TLS) untuk organisasi. Mengelola sertifikat lebih rumit tapi jauh lebih aman daripada PSK besar yang dibagi-pakai. 
securew2.com

Praktik PSK (untuk jaringan kecil)

Gunakan passphrase panjang (≥ 20 karakter) dan acak jika tetap memakai PSK.

Ganti PSK saat ada anggota keluar atau perangkat hilang.

Lindungi penyimpanan passphrase (jangan letakkan di dokumen publik).

Firmware & Patch

Segera patch perangkat: banyak serangan dieksploitasi karena firmware lawas (Pixie Dust, implementasi Dragonblood). Lacak advisori vendor dan patch. 
Help Net Security
+1

Konfigurasi Tambahan

Aktifkan 802.1X / RADIUS untuk kontrol akses granular.

Gunakan management frame protection (802.11w/Protected Management Frames) untuk mengurangi spoofing/deauth attacks.

Gunakan segmentasi jaringan: VLAN untuk tamu, isolasi klien, dan blokir akses lateral.

Pantau log: IDS/IPS untuk trafik anomali, dan audit handshake/association abnormal.

Monitoring & Testing (pentest mindset)

Lakukan audit rutin (wardriving internal/controlled) untuk mendeteksi AP rogue.

Uji kata sandi PSK dengan capture 4-way handshake + offline brute-force untuk mengukur kekuatan passphrase (pentest terotorisasi).

Cek apakah WPS aktif dan rentan (Pixie Dust), serta apakah AP mendukung downgrade.

Lampiran: Ringkasan Serangan Penting & Mitigasi Singkat

WEP: FMS / PTW / IV attacks → Mitigasi: nonaktifkan WEP. 
dl.aircrack-ng.org
+1

WPA (TKIP): Beck-Tews, Michael attack → Mitigasi: gunakan AES/CCMP (WPA2) atau WPA3. 
papers.mathyvanhoef.com

WPA2-PSK: offline dictionary after 4-way handshake capture → Mitigasi: passphrase kuat / WPA3-SAE. 
NetworkLessons.com

WPS Pixie Dust: trivial PIN recovery on vulnerable devices → Mitigasi: disable WPS, patch firmware. 
Help Net Security

WPA3 Dragonblood: timing/side-channel & downgrade issues on some implementations → Mitigasi: update wpa_supplicant/hostapd/firmware; vendor patches. 
wpa3.mathyvanhoef.com
+1

Rekomendasi Bacaan & Sumber Teknis (untuk mendalami)

Paper & tutorial tentang 4-way handshake / PTK/PMK (penjelasan langkah demi langkah). 
NetworkLessons.com
+1

Penelitian Dragonblood (analisis kelemahan WPA3-SAE). 
wpa3.mathyvanhoef.com
+1

Laporan/whitepaper Pixie Dust dan survei perangkat rentan (NetRise, SecurityWeek). 
netrise.io
+1

Paper Practical Verification of WPA-TKIP Vulnerabilities. 
papers.mathyvanhoef.com

Kalau mau, saya bisa:

Ubah materi ini jadi file Markdown yang bisa unduh (README.md).

Tambahkan diagram sederhana (urutan 4-way handshake) atau flowchart RADIUS.

Buat checklist deployment aman step-by-step (konfigurasi router/AP konkret).

Mau saya lanjutkan ke salah satu opsi di atas?
