# Roadmap Lengkap: Wi-Fi Penetration Testing

## 🎯 Level 1: Fundamental & Konsep Dasar

### Modul 1: Pengenalan Jaringan Wireless
- Perbedaan Jaringan Kabel dan Nirkabel
- Cara Kerja Komunikasi Wireless
- Kelebihan dan Kelemahan Wireless Network

### Modul 2: Standar dan Protokol Wi-Fi
- Standar IEEE 802.11 (a/b/g/n/ac/ax/be)
- Perbandingan Kecepatan, Range, dan Karakteristik
- Frekuensi 2.4 GHz, 5 GHz, dan 6 GHz
- Channel dan Channel Bonding
- SSID, BSSID, dan ESSID

### Modul 3: Mode Operasi Wi-Fi
- Jenis Mode Wi-Fi (Infrastructure vs Ad-Hoc)
- AP (Access Point) Mode
- STA (Station/Client) Mode
- Monitor Mode
- Master Mode
- Promiscuous Mode

### Modul 4: Arsitektur Wireless Network
- Komponen Jaringan Wireless (AP, Client, Controller)
- Topologi Wireless (BSS, ESS, IBSS, MBSS)
- Wireless Distribution System (WDS)
- Mesh Network

---

## 🔐 Level 2: Keamanan Wi-Fi

### Modul 5: Enkripsi dan Authentication
- Open Network (No Security)
- WEP (Wired Equivalent Privacy)
- WPA (Wi-Fi Protected Access)
- WPA2 (AES-CCMP)
- WPA3 (SAE, Enhanced Open)
- WPA2/WPA3 Transition Mode
- Enterprise vs Personal Authentication

### Modul 6: Authentication Methods
- Pre-Shared Key (PSK)
- 802.1X / EAP (Extensible Authentication Protocol)
- EAP-TLS, EAP-TTLS, PEAP, EAP-FAST
- RADIUS Server
- Captive Portal

### Modul 7: Frame dan Packet Structure
- Management Frames (Beacon, Probe, Auth, Deauth, Disassoc)
- Control Frames (RTS, CTS, ACK)
- Data Frames
- Frame Header Analysis
- 4-Way Handshake Process

---

## 🛠️ Level 3: Tools & Environment Setup

### Modul 8: Persiapan Lab Environment
- Memilih OS untuk Penetration Testing (Kali Linux, Parrot OS)
- Virtual Machine Setup
- Dual Boot Considerations
- Hardware Requirements

### Modul 9: Wireless Adapter
- Memilih Wireless Adapter yang Tepat
- Chipset yang Support Monitor Mode dan Packet Injection
- Rekomendasi Adapter (Alfa, TP-Link, dll)
- Driver Installation (aircrack-ng, rtl8812au, dll)
- Menguji Monitor Mode dan Packet Injection

### Modul 10: Essential Tools
- Aircrack-ng Suite (airmon-ng, airodump-ng, aireplay-ng, aircrack-ng)
- Wireshark
- Reaver & Bully (WPS Attack)
- Hashcat & John the Ripper
- Wifite & Fluxion
- Kismet & Airgraph-ng
- Wash (WPS Scanner)
- MDK3/MDK4
- Cowpatty
- Pyrit

---

## 🎯 Level 4: Reconnaissance & Information Gathering

### Modul 11: Passive Reconnaissance
- Wardriving Concepts
- Wigle.net dan Database Wi-Fi
- Network Discovery tanpa Terdeteksi
- SSID dan Hidden Network Discovery
- Client Identification

### Modul 12: Active Reconnaissance
- Network Scanning dengan Airodump-ng
- Kismet untuk Monitoring
- Identifying Security Type
- Client Probing
- Channel Hopping
- Capture Traffic Analysis

### Modul 13: Wireless Survey
- Site Survey Methodology
- Signal Strength Analysis (RSSI, SNR)
- Coverage Mapping
- Interference Detection
- Rogue AP Detection

---

## ⚔️ Level 5: Wireless Attack Techniques

### Modul 14: WEP Attacks
- WEP Weakness dan Vulnerability
- ARP Request Replay Attack
- Fragmentation Attack
- Chopchop Attack
- Fake Authentication
- Cracking WEP dengan Aircrack-ng

### Modul 15: WPA/WPA2 PSK Attacks
- Capturing 4-Way Handshake
- Deauthentication Attack
- Dictionary Attack
- Brute Force Attack
- Rainbow Table Attack
- Cracking dengan Aircrack-ng, Hashcat, John
- PMKID Attack (Hashcat)

### Modul 16: WPS Attacks
- WPS Vulnerability dan PIN
- Pixie Dust Attack
- Online Brute Force dengan Reaver
- Offline Attack dengan Bully
- WPS Push Button Attack

### Modul 17: Enterprise Wi-Fi Attacks
- EAP Attacks
- Fake AP / Evil Twin Attack
- RADIUS Server Attacks
- Certificate Spoofing
- Downgrade Attacks
- Username Harvesting

### Modul 18: Evil Twin & Rogue AP
- Hostapd Configuration
- Creating Fake Access Point
- DNS Spoofing
- Credential Harvesting
- SSL Stripping
- Captive Portal Phishing
- Fluxion dan Wifiphisher

### Modul 19: Man-in-the-Middle (MITM)
- ARP Spoofing di Wireless
- Traffic Interception
- Session Hijacking
- SSL/TLS Stripping
- Ettercap dan Bettercap
- Wireshark untuk MITM Analysis

### Modul 20: Denial of Service (DoS)
- Deauthentication/Disassociation Flood
- Beacon Flooding
- Authentication Flood
- TKIP MIC Exploitation
- Channel Jamming
- MDK3/MDK4 untuk DoS

### Modul 21: Advanced Attacks
- Krack Attack (Key Reinstallation)
- Dragonblood (WPA3 Vulnerability)
- FragAttacks
- Client-Side Attacks
- Karma Attack
- MANA Attack

---

## 🔬 Level 6: Post-Exploitation

### Modul 22: Network Enumeration
- Network Scanning (Nmap)
- Service Enumeration
- OS Fingerprinting
- Vulnerability Scanning
- Pivoting ke Jaringan Internal

### Modul 23: Traffic Analysis
- Wireshark Deep Dive
- Protocol Analysis
- Extracting Files dari Capture
- Password Sniffing (HTTP, FTP, Telnet)
- VoIP/SIP Analysis

### Modul 24: Maintaining Access
- Backdoor di Wireless Network
- Persistent Rogue AP
- Client-Side Persistence

---

## 🛡️ Level 7: Defense & Countermeasures

### Modul 25: Wireless Security Best Practices
- Choosing Strong Security (WPA3)
- Strong Password Policy
- Hidden SSID: Pro & Cons
- MAC Filtering: Effectiveness
- Disabling WPS
- Network Segmentation

### Modul 26: Detection & Prevention
- Wireless Intrusion Detection System (WIDS)
- Wireless Intrusion Prevention System (WIPS)
- Detecting Rogue APs
- Detecting Deauth Attacks
- Monitoring Tools (Kismet, Snort)

### Modul 27: Secure Configuration
- AP Hardening
- Firmware Updates
- Strong Encryption Implementation
- 802.1X Implementation
- Certificate Management
- Guest Network Isolation

### Modul 28: Incident Response
- Detecting Compromise
- Forensics pada Wireless Network
- Log Analysis
- Response Procedures

---

## 📋 Level 8: Methodology & Reporting

### Modul 29: Penetration Testing Methodology
- Wireless Pentest Framework
- Scope Definition
- Rules of Engagement
- Legal dan Ethical Considerations
- Authorization dan Permission

### Modul 30: Documentation & Reporting
- Note-Taking selama Pentest
- Screenshot dan Evidence Collection
- Report Structure
- Risk Rating (CVSS, OWASP)
- Remediation Recommendations
- Executive Summary vs Technical Report

---

## 🚀 Level 9: Advanced Topics

### Modul 31: Bluetooth & IoT Wireless
- Bluetooth Security
- BLE (Bluetooth Low Energy) Attacks
- Zigbee & Z-Wave
- IoT Device Exploitation

### Modul 32: Enterprise Wi-Fi Deep Dive
- RADIUS Server Pentesting
- Certificate-Based Auth Attacks
- NAC Bypass
- Wireless Controller Exploitation

### Modul 33: Automation & Scripting
- Bash Scripting untuk Wireless Pentest
- Python untuk Automation (Scapy)
- Custom Tool Development
- Integration dengan Framework (Metasploit)

### Modul 34: Red Team Operations
- Wireless dalam Red Team Engagement
- Physical Security + Wireless
- Long-Range Attacks
- Drop Box dan Implants
- Wireless C2 Channels

---

## 🎓 Level 10: Praktik & Sertifikasi

### Modul 35: Lab Praktikum
- Setup Lab Environment
- 20+ Hands-On Labs
- CTF Challenges
- Real-World Scenarios

### Modul 36: Certifications & Career Path
- OSWP (Offensive Security Wireless Professional)
- CEH (Certified Ethical Hacker)
- CWSP (Certified Wireless Security Professional)
- GAWN (GIAC Assessing Wireless Networks)
- Career Roadmap sebagai Wireless Security Specialist

### Modul 37: Resources & Community
- Recommended Books
- Online Resources
- Communities & Forums
- Bug Bounty Programs
- Staying Updated dengan Latest Vulnerabilities

---

## 📝 Appendix

### Cheat Sheets
- Aircrack-ng Command Reference
- Wireshark Filters
- Common Wordlists
- Quick Reference Cards

### Legal & Ethical Guidelines
- Computer Fraud & Abuse Act
- UU ITE Indonesia
- Responsible Disclosure
- Testing Authorization Templates

### Troubleshooting Guide
- Common Errors dan Solutions
- Adapter Issues
- Driver Problems
- FAQ

---

## 💡 Tips Belajar
1. **Hands-on Practice**: Teori 30%, Praktik 70%
2. **Setup Lab Sendiri**: Gunakan router lama untuk eksperimen
3. **Ethical**: Jangan test ke network orang tanpa izin
4. **Document Everything**: Biasakan dokumentasi dari awal
5. **Join Community**: Bergabung dengan komunitas security
6. **Stay Updated**: Follow CVE dan security research terbaru
7. **Legal First**: Selalu pastikan punya izin sebelum test
