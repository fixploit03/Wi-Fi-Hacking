DAFTAR ISI — Roadmap Lengkap Pembelajaran Wi-Fi Penetration Testing (Versi Indonesia)

Disusun oleh: Fixploit03
Versi: Edukasi Nasional | Level: Pemula → Profesional
Format: Modul Teori + Praktik Lab

🧭 BAGIAN 0 — PERSIAPAN & PENGANTAR
0.1. Tujuan & Sasaran Pembaca

0.1.1. Untuk siapa materi ini dibuat

0.1.2. Kemampuan awal yang diperlukan

0.1.3. Hasil akhir setelah menyelesaikan roadmap

0.2. Panduan Penggunaan Materi

0.2.1. Alur pembelajaran (linear vs modular)

0.2.2. Checklist progres belajar

0.2.3. Format latihan & tugas per bab

0.3. Etika, Legalitas, & Batasan Penggunaan

0.3.1. Etika dalam dunia pentesting

0.3.2. Penggunaan lab pribadi dan izin eksplisit

0.3.3. Penjelasan singkat UU ITE dan tanggung jawab hukum

0.4. Persiapan Teknis

0.4.1. Kebutuhan hardware dan software

0.4.2. Instalasi Kali Linux (VM dan fisik)

0.4.3. Pemilihan dan pengujian adaptor Wi-Fi

0.4.4. Struktur folder & penyimpanan hasil

📡 BAGIAN I — DASAR JARINGAN & WI-FI
1.1. Pengantar Jaringan Komputer

1.1.1. Model OSI dan TCP/IP

1.1.2. Komponen dasar jaringan

1.1.3. Perbedaan jaringan kabel dan nirkabel

1.2. Dasar-Dasar Teknologi Wi-Fi

1.2.1. Standar IEEE 802.11 (a/b/g/n/ac/ax/be)

1.2.2. Frekuensi 2.4 GHz, 5 GHz, dan 6 GHz

1.2.3. Jenis mode Wi-Fi (AP, STA, Monitor, Master)

1.2.4. Frame 802.11 (Management, Control, Data)

1.3. Proses Koneksi Wi-Fi

1.3.1. Proses scanning (aktif & pasif)

1.3.2. Authentication & Association

1.3.3. 4-Way Handshake (konsep dasar)

🔐 BAGIAN II — PROTOKOL KEAMANAN WI-FI
2.1. Open Network

2.1.1. Definisi & risiko keamanan

2.1.2. Kasus penyalahgunaan open hotspot

2.2. Wired Equivalent Privacy (WEP)

2.2.1. Arsitektur & cara kerja WEP

2.2.2. IV, RC4, & kelemahan algoritma

2.2.3. Jenis serangan terhadap WEP

2.3. Wi-Fi Protected Access (WPA)

2.3.1. Sejarah transisi dari WEP ke WPA

2.3.2. TKIP & mekanisme enkripsi

2.3.3. Kelemahan WPA

2.4. WPA2

2.4.1. Pengenalan WPA2-PSK & WPA2-Enterprise

2.4.2. 4-Way Handshake detail

2.4.3. Mekanisme CCMP & AES

2.4.4. Kerentanan: KRACK Attack

2.5. WPA3

2.5.1. SAE (Simultaneous Authentication of Equals)

2.5.2. Forward secrecy & proteksi brute force

2.5.3. Serangan Dragonblood

2.6. Wi-Fi Protected Setup (WPS)

2.6.1. Konsep PIN dan PBC

2.6.2. Serangan Reaver & PixieDust

2.6.3. Mitigasi dan disable WPS

⚔️ BAGIAN III — MODEL ANCAMAN & KLASIFIKASI SERANGAN
3.1. Klasifikasi Serangan Wi-Fi

3.1.1. Serangan Pasif vs Aktif

3.1.2. Serangan terhadap Infrastruktur vs Klien

3.2. Jenis Serangan Utama

3.2.1. Sniffing & Packet Capture

3.2.2. Deauthentication & Disassociation

3.2.3. Man-in-the-Middle (MitM)

3.2.4. Rogue Access Point & Evil Twin

3.2.5. Serangan DoS

3.2.6. Serangan terhadap WPS dan PMKID

3.2.7. Serangan berbasis Frame Manipulation

3.3. Threat Modeling

3.3.1. Identifikasi aset & ancaman

3.3.2. Penilaian risiko (likelihood vs impact)

3.3.3. Strategi mitigasi dasar

🧪 BAGIAN IV — PEMBANGUNAN LAB UJI COBA
4.1. Desain Lab Aman

4.1.1. Arsitektur lab (fisik & virtual)

4.1.2. Isolasi jaringan & keamanan lingkungan

4.2. Virtual Lab

4.2.1. Penggunaan VirtualBox / VMware

4.2.2. Setup Kali Linux dan sistem korban

4.2.3. Snapshot & restore

4.3. Lab Fisik

4.3.1. Router, adaptor, antena

4.3.2. Pengaturan hostapd & dnsmasq

4.3.3. Pembuatan Access Point tiruan

4.4. Dokumentasi & Template Lab

4.4.1. Template runbook eksperimen

4.4.2. Template laporan hasil uji

🛠️ BAGIAN V — PENGUASAAN TOOLS
5.1. Tools Utama Aircrack-ng Suite

5.1.1. Airodump-ng (scanning)

5.1.2. Aireplay-ng (injeksi & deauth)

5.1.3. Aircrack-ng (cracking WEP/WPA)

5.2. hcxdumptool & hcxpcapngtool

5.2.1. Capture handshake & PMKID

5.2.2. Konversi ke format Hashcat

5.3. Hashcat

5.3.1. Mode cracking WPA2 (22000)

5.3.2. Penggunaan GPU & optimasi rule

5.4. Wireshark & Tshark

5.4.1. Analisis frame 802.11

5.4.2. Filter paket penting

5.5. Bettercap, Kismet, Reaver, Wifite

5.5.1. MitM & traffic monitoring

5.5.2. Recon otomatis

5.5.3. WPS exploitation

5.6. Utilities Pendukung

5.6.1. macchanger, crunch, john, tcpdump

5.6.2. Troubleshooting koneksi & adapter

⚙️ BAGIAN VI — PRAKTIK SERANGAN (LAB INTENSIF)
6.1. Lab 1: Recon & Scanning
6.2. Lab 2: Deauthentication Attack
6.3. Lab 3: Capture & Crack 4-Way Handshake
6.4. Lab 4: PMKID Attack
6.5. Lab 5: WEP IV Collection & Crack
6.6. Lab 6: WPS PIN Brute-Force
6.7. Lab 7: Evil Twin & Captive Portal
6.8. Lab 8: Man-in-the-Middle (Bettercap)
6.9. Lab 9: Client-Side Exploitation
6.10. Dokumentasi & Bukti (PCAP, screenshot, laporan)
🧰 BAGIAN VII — OTOMATISASI & OPTIMALISASI
7.1. Wordlist & Rule Generation
7.2. Automasi Capture–Convert–Crack
7.3. Scripting dengan Bash & Python (Scapy)
7.4. Pembuatan Tool Otomatis (mini project)
🛡️ BAGIAN VIII — PERTAHANAN & HARDENING
8.1. Pengamanan Access Point
8.2. Segmentasi jaringan & VLAN
8.3. Implementasi WPA3 & 802.1X
8.4. Deteksi Rogue AP (WIDS/WIPS)
8.5. Playbook Respons Insiden Wi-Fi
8.6. Forensik & Analisis Insiden
🏢 BAGIAN IX — WI-FI ENTERPRISE & PENELITIAN LANJUT
9.1. Arsitektur Wi-Fi Enterprise
9.2. Protokol Roaming (802.11r/k/v)
9.3. Analisis Firmware & SDR
9.4. Studi Kasus CVE (KRACK, Dragonblood)
9.5. Eksperimen Replikasi Penelitian
📝 BAGIAN X — PELAPORAN & PROFESIONALISME
10.1. Struktur Laporan Penetration Test
10.2. Format Executive Summary & Technical Report
10.3. Responsible Disclosure
10.4. Pembuatan Portofolio & Dokumentasi Hasil
🧩 BAGIAN XI — PROYEK AKHIR (CAPSTONE)
11.1. Skenario Pentest Wi-Fi Lengkap
11.2. Pelaksanaan & Dokumentasi
11.3. Evaluasi & Self-Assessment
11.4. Rencana Mitigasi & Hardening
11.5. Penyusunan Laporan Akhir
📚 LAMPIRAN
A. Istilah Penting dalam Keamanan Wi-Fi
B. Cheat Sheet Command Pentest
C. Template Runbook & Laporan
D. Daftar Tools & Referensi Pembelajaran
E. Daftar Buku, Sumber, & Referensi Lanjutan
