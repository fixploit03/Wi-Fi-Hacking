# 🛡️ ROADMAP MASTER: Wi-Fi Security dari Nol hingga Expert

**Versi 3.0 - Struktur Sempurna** | Total: 3-6 bulan | Praktik 40% | Teori 30% | Defense 30%

---

## 📖 PETUNJUK PENGGUNAAN ROADMAP

### Filosofi Pembelajaran
```
Foundation → Offense → Defense → Mastery
   (30%)      (35%)      (25%)     (10%)
```

### Track Learning Paths

**🟢 Beginner Track** (3-6 bulan)
- Wajib: 0, I, II, III, IV, V, VI, VII, IX, XII, XIII
- Skip: VIII (advanced), X (research), XI (reporting pro)

**🟡 Intermediate Track** (2-4 bulan)  
- Review cepat: 0, I, II
- Fokus: III, IV, V, VI, VII, VIII, IX, XI, XII, XIII
- Tambahan: X (pilihan)

**🔴 Advanced Track** (1-2 bulan)
- Skip foundation (0-II)
- Langsung: III-IV (review), V-VIII (praktik intensif)
- Deep dive: IX, X (research), XI, XII

### Metrik Progress
```
□ Belum mulai
▶ Sedang berjalan (current)
✓ Selesai dipelajari
★ Sudah praktik & dikuasai
```

---

## 🎯 FASE 0: PERSIAPAN TOTAL (2-3 hari)

### **Bagian 0 — Setup & Readiness Check**

**Sub-bagian:**

**0.1 Assessment Diri**
- Quiz: Apakah saya siap? (10 pertanyaan pre-test)
- Cek skill Linux: 5 command wajib
- Cek skill networking: Subnetting mini-test
- Expected outcome: Skor minimal 6/10 untuk lanjut

**0.2 Hardware & Software Preparation**
- Checklist hardware lengkap (PC, adapter, antena)
- Download semua software (Kali ISO, VirtualBox, tools)
- Verifikasi compatibility chipset adapter
- Setup VM dengan spesifikasi optimal
- Expected outcome: Environment 100% ready

**0.3 Legal & Ethics Briefing**
- Baca & tandatangani "Ethics Pledge" pribadi
- Pahami UU ITE & konsekuensi hukum
- Buat lab policy document
- Expected outcome: Commitment tertulis

**0.4 Learning Resources Setup**
- Buat folder structure (labs/notes/scripts/pcaps)
- Setup GitHub/GitLab repo
- Install note-taking app (Obsidian/Notion)
- Bookmark resource penting
- Expected outcome: Organized workspace

**0.5 Baseline Test**
- Pre-assessment: 20 soal teori dasar
- Hands-on test: 3 command dasar
- Catat skor untuk dibandingkan akhir
- Expected outcome: Baseline knowledge documented

**🎯 Milestone 0:** Lab ready, mindset benar, tracking system aktif

---

## 📚 FASE I: FOUNDATION (1 minggu)

### **Bagian I — Mindset & Context**

**1.1 Big Picture Wi-Fi Security**
- Mengapa Wi-Fi adalah attack surface terbesar 2025
- Real-world breach cases (2020-2024)
- Career opportunities di Wi-Fi security
- Roadmap overview & ekspektasi realistis

**1.2 Ethics & Legal Framework**
- Etika hacking: White/Gray/Black hat
- Hukum Indonesia: UU ITE pasal krusial
- International law: CFAA (US), GDPR (EU)
- Responsible disclosure framework
- Case study: Hacker ditangkap vs diberi bounty

**1.3 Threat Landscape**
- APT groups menggunakan wireless
- Common attack scenarios
- Victim profiles & targeting
- Defense maturity levels

**1.4 Persiapan Mental**
- Dealing dengan frustasi teknis
- Learning curve expectations
- Community & resources
- Growth mindset untuk security

**🎯 Milestone I:** Ethical commitment solid, konteks jelas

---

## 🌐 FASE II: NETWORKING FUNDAMENTALS (3-5 hari)

### **Bagian II — Core Wireless Networking**

**2.1 Radio Frequency Basics**
- Elektromagnetik spectrum
- 2.4 GHz vs 5 GHz vs 6 GHz (Wi-Fi 6E)
- Power, frequency, wavelength relationship
- Interferensi & noise
- Channel planning & overlap

**2.2 IEEE 802.11 Standards Evolution**
- 802.11b/g/n/ac/ax/be timeline
- Perbedaan kecepatan, jangkauan, fitur
- Backward compatibility
- Wi-Fi 6 (ax) & Wi-Fi 6E features
- Wi-Fi 7 (be) preview

**2.3 OSI Model & Wi-Fi Position**
- Layer 1 (Physical): Radio transmission
- Layer 2 (Data Link): MAC addressing, frames
- Posisi 802.11 di OSI stack
- Interaksi dengan upper layers

**2.4 Wi-Fi Architecture Components**
- **Devices**: AP, Client/STA, Router, Bridge, Repeater
- **Modes**: Infrastructure, Ad-hoc, Monitor, Master
- **Topologies**: BSS, ESS, IBSS, MBSS (Mesh)
- **Identifiers**: SSID, BSSID, ESSID

**2.5 Frame Structure & Types**
- Management frames (Beacon, Probe, Auth, Assoc)
- Control frames (RTS, CTS, ACK)
- Data frames & QoS
- Frame anatomy: Header, Body, FCS
- Radiotap headers

**2.6 Connection Process**
- Scanning (active vs passive)
- Authentication (Open vs Shared Key)
- Association & reassociation
- 4-way handshake (preview)
- Roaming mechanisms

**2.7 Networking Services**
- DHCP: IP allocation
- DNS: Name resolution
- NAT: Private to public IP
- Captive portals
- QoS & traffic prioritization

**2.8 Enterprise Architecture**
- RADIUS & 802.1X authentication
- VLAN segmentation
- Controller-based vs autonomous AP
- WLC (Wireless LAN Controller)

**2.9 Hardware Deep-Dive**
- **Wireless adapters**: Chipset (Atheros, Realtek, MediaTek)
- Monitor mode vs managed mode
- Packet injection capability
- **Antennas**: Omnidirectional, directional, gain
- **SDR basics** (optional intro)

**2.10 Packet Analysis Intro**
- Wireshark installation & interface
- Capture filters vs display filters
- Dissecting 802.11 frames
- .pcap/.pcapng file formats

**🎯 Milestone II:** Bisa jelaskan wireless network end-to-end, baca pcap basic

**📝 Mini-Project:** Buat diagram jaringan rumah/kantor lengkap dengan annotasi

---

## 🔐 FASE III: SECURITY PROTOCOLS (3-4 hari)

### **Bagian III — Encryption & Authentication**

**3.1 No Security: Open Networks**
- Use cases: Guest networks, hotspots
- Risks: Sniffing, MitM
- Captive portals sebagai "security"

**3.2 WEP (Legacy - Historical Context)**
- RC4 stream cipher
- IV (Initialization Vector) weakness
- Key sizes: 64-bit, 128-bit
- Attack vectors: IV reuse, FMS, PTW
- Mengapa masih perlu dipelajari

**3.3 WPA (Transitional)**
- TKIP (Temporal Key Integrity Protocol)
- Michael MIC
- Per-packet key mixing
- Limitations & vulnerabilities

**3.4 WPA2-Personal (PSK)**
- AES-CCMP encryption
- 4-way handshake deep-dive:
  - ANonce, SNonce
  - PMK (Pairwise Master Key)
  - PTK (Pairwise Transient Key)
  - GTK (Group Temporal Key)
- Password-based authentication
- Attack surface: Brute-force, dictionary

**3.5 WPA2-Enterprise (802.1X)**
- RADIUS server role
- EAP (Extensible Authentication Protocol)
- EAP types: EAP-TLS, PEAP, EAP-TTLS, EAP-FAST
- Certificate management
- User vs device authentication

**3.6 WPA3-Personal (SAE)**
- Dragonfly handshake (SAE)
- Forward secrecy
- Brute-force protection
- Downgrade protection
- Transition mode (WPA2/WPA3)

**3.7 WPA3-Enterprise**
- 192-bit security suite
- Opportunistic Wireless Encryption (OWE)
- Enhanced Open
- Better certificate validation

**3.8 WPS (Wi-Fi Protected Setup)**
- PIN method
- Push-button method
- Vulnerabilities: Brute-force PIN, Pixie Dust
- Mengapa harus dinonaktifkan

**3.9 Key Management Best Practices**
- Password strength requirements
- Rotation policies
- Pre-shared key distribution
- Enterprise key management

**3.10 Known Vulnerabilities Timeline**
- KRACK (Key Reinstallation Attack)
- Dragonblood (WPA3 flaws)
- FragAttacks
- Kr00k (CVE-2019-15126)
- Lessons learned

**🎯 Milestone III:** Pahami semua protokol, bisa bandingkan security level

**📝 Mini-Project:** Buat comparison matrix WEP/WPA/WPA2/WPA3

---

## ⚔️ FASE IV: THREAT MODELING (4 hari)

### **Bagian IV — Attack Vectors & Techniques**

**4.1 Attack Taxonomy**
- Passive vs Active attacks
- Network-layer vs Application-layer
- Targeted vs Opportunistic
- Attack kill-chain untuk Wi-Fi

**4.2 Reconnaissance (Passive)**
- **Wardriving**: Konsep, tools, legal issues
- **Wigle.net** & mapping
- Passive sniffing tanpa authentication
- Information gathering: SSID, encryption, clients
- OSINT untuk Wi-Fi targets

**4.3 Active Scanning**
- Probe requests
- Deauthentication frames
- Airodump-ng dalam action
- Ethical boundaries

**4.4 Denial of Service (DoS)**
- Deauthentication attack mekanisme
- Disassociation floods
- EAPOL-start floods
- CTS/RTS abuse
- RF jamming (teori only - ilegal)

**4.5 Eavesdropping & Sniffing**
- Monitor mode functionality
- Capturing handshakes
- Extracting metadata
- Privacy implications

**4.6 Man-in-the-Middle (MitM)**
- Evil Twin attack flow
- Rogue AP setup
- SSL stripping
- ARP spoofing di Wi-Fi
- DNS hijacking
- Credential harvesting

**4.7 Protocol-Specific Attacks**
- **WEP**: IV attack, FMS, PTW, ARP injection
- **WPA/WPA2**: 4-way handshake capture, offline brute-force
- **PMKID attack**: Hashcat mode 22000
- **WPS**: PIN brute-force, Pixie Dust, NULL PIN
- **WPA3**: Timing attacks, side-channel

**4.8 Captive Portal Bypass**
- MAC spoofing techniques
- DNS tunneling
- Paid Wi-Fi bypass (ethics warning)

**4.9 Client-Side Attacks**
- Auto-connect exploitation
- PNL (Preferred Network List) abuse
- Fake network attacks
- Karma attack variations

**4.10 Advanced & Emerging Threats**
- Firmware exploits
- Supply chain attacks (default credentials)
- IoT device targeting
- Wi-Fi Direct vulnerabilities
- Bluetooth/Wi-Fi co-location attacks

**4.11 Forensics Basics**
- Evidence preservation
- Timeline reconstruction
- Log analysis
- Chain of custody

**🎯 Milestone IV:** Kenali semua attack vectors tanpa hands-on (teori kuat)

**📝 Mini-Project:** Analisis case study real-world attack (KRACK atau lainnya)

---

## 🧪 FASE V: LAB CONSTRUCTION (2-3 hari)

### **Bagian V — Safe & Isolated Lab Setup**

**5.1 Lab Design Principles**
- Isolation requirements (air-gap, Faraday cage optional)
- Legal considerations: Own equipment only
- Safety: No real targets, no public testing
- Repeatability & documentation

**5.2 Physical Lab Setup**
- Dedicated laptop/PC for attacker
- Target APs (old routers)
- Wireless adapter dengan monitor mode
- Client devices (VMs atau old phones)
- Network cables & power
- Faraday bag untuk containment (optional)

**5.3 Virtual Lab Architecture**
- **Attacker VM**: Kali Linux
- **Victim/Client VMs**: Windows, Linux, Android emulator
- **Network modes**: NAT, Host-Only, Internal
- Virtualized AP dengan hostapd
- Snapshot strategy

**5.4 Target AP Configuration**
- Setup WEP network (legacy router)
- Setup WPA2-PSK dengan weak password
- Setup WPA2-PSK dengan strong password
- Setup WPS-enabled network
- Setup WPA3 (jika ada hardware support)
- Setup captive portal

**5.5 RADIUS Server Setup**
- FreeRADIUS installation
- Certificate generation
- User database configuration
- EAP configuration
- Testing authentication

**5.6 Monitoring & Logging**
- Centralized logging
- Packet capture setup
- Screen recording untuk demo
- Documentation templates

**5.7 Safety Checklists**
- Pre-lab checklist
- During-lab monitoring
- Post-lab cleanup
- Incident response plan untuk lab

**5.8 Templates & Automation**
- Hostapd config templates
- Dnsmasq config templates
- VM export/import (.ova)
- Setup scripts

**🎯 Milestone V:** Lab fully functional, reproducible, documented

**📝 Mini-Project:** Buat "Lab Runbook" lengkap untuk setup dari nol

---

## 🛠️ FASE VI: TOOLS MASTERY (3-4 hari)

### **Bagian VI — Essential Tools Deep-Dive**

**6.1 Aircrack-ng Suite**
- **airmon-ng**: Mode switching, troubleshooting
- **airodump-ng**: Scanning, filtering, output formats
- **aireplay-ng**: Injection tests, deauth, fake auth, ARP replay
- **aircrack-ng**: Cracking WEP, WPA handshakes
- **airdecap-ng**: Decrypting captures
- **airbase-ng**: Fake AP creation

**6.2 Hashcat**
- Installation: CPU vs GPU
- Driver setup (CUDA/OpenCL)
- Hash modes: 22000 (WPA), 22001 (PMKID)
- Attack modes: Dictionary, combinator, mask, hybrid
- Optimization: Workload, rules
- Potfile management

**6.3 hcxdumptool & hcxtools**
- hcxdumptool: Modern packet capture
- hcxpcapngtool: Convert pcap to hashcat format
- PMKID extraction
- Advantages over aircrack-ng

**6.4 Wireshark**
- Installation & tshark CLI
- Capture filters untuk Wi-Fi
- Display filters advanced
- Follow streams
- Export objects
- Statistics & graphs

**6.5 Bettercap**
- Installation & modules
- Wi-Fi reconnaissance
- Deauth module
- Captive portal module
- MitM capabilities
- Scripting dengan caplets

**6.6 Kismet**
- Installation & configuration
- Wardriving mode
- Bluetooth & other protocols
- GPS integration
- Log analysis

**6.7 Reaver & Bully**
- WPS PIN attack
- Pixie Dust attack dengan pixiewps
- Reaver options & timeouts
- Ethics & legality reminder

**6.8 Wifite**
- Automated attack tool
- Configuration & customization
- When to use vs manual
- Understanding what it does under hood

**6.9 MDK4**
- DoS attack types
- Beacon flooding
- Deauth flooding
- Ethical usage

**6.10 Hostapd & Dnsmasq**
- Creating fake APs
- Captive portal setup
- DHCP server config
- Evil Twin foundation

**6.11 Supporting Tools**
- **tcpdump**: Quick captures
- **macchanger**: MAC spoofing
- **crunch**: Wordlist generation
- **john**: Password manipulation
- **ettercap**: MitM framework

**6.12 Troubleshooting Tools**
- **iwconfig, iw, ip**: Interface management
- **rfkill**: Unblock adapters
- **lsusb, lspci**: Hardware detection
- **dmesg**: Driver issues

**🎯 Milestone VI:** Comfortable dengan semua tools, tahu kapan pakai apa

**📝 Mini-Project:** Buat personal "Tool Selection Flowchart"

---

## 💥 FASE VII: HANDS-ON OFFENSIVE (7-10 hari) ⚠️

### **Bagian VII — Practical Attack Labs**

**⚠️ WARNING: LAB ONLY - NEVER ON PRODUCTION/PUBLIC NETWORKS**

**7.1 Lab 1: Reconnaissance**
- Setup: Lab dengan 3 APs berbeda encryption
- Task: Scan, identify, categorize
- Tools: airodump-ng, Kismet
- Deliverable: Recon report dengan screenshot

**7.2 Lab 2: Deauthentication Attack**
- Setup: WPA2 AP + connected client
- Task: Deauth client, observe reconnection
- Tools: aireplay-ng
- Objective: Understand DoS impact
- Defense: Implement 802.11w testing

**7.3 Lab 3: WPA2 Handshake Capture**
- Setup: WPA2-PSK AP dengan known password
- Task: Capture 4-way handshake
- Methods: Passive wait vs deauth-triggered
- Tools: airodump-ng
- Verification: Wireshark analysis

**7.4 Lab 4: Handshake Cracking**
- Setup: Use captured handshake dari Lab 3
- Task: Crack dengan wordlist
- Tools: aircrack-ng, Hashcat
- Comparison: Speed, efficiency
- Deliverable: Cracked password + time taken

**7.5 Lab 5: PMKID Attack**
- Setup: WPA2 AP (roaming enabled)
- Task: Capture PMKID tanpa client
- Tools: hcxdumptool, Hashcat
- Advantage: No deauth needed
- Deliverable: Successful extraction

**7.6 Lab 6: WEP Cracking (Historical)**
- Setup: WEP-enabled AP
- Task: IV collection & crack
- Methods: PTW attack
- Tools: aireplay-ng (ARP replay), aircrack-ng
- Timeframe: <10 minutes usually

**7.7 Lab 7: WPS PIN Attack**
- Setup: WPS-enabled AP
- Task: Bruteforce PIN
- Tools: Reaver, Bully
- Task 2: Pixie Dust attack
- Defense: Disable WPS

**7.8 Lab 8: Evil Twin Attack**
- Setup: Legitimate AP + fake AP
- Task: Create identical SSID, deauth real clients
- Tools: hostapd, dnsmasq, aireplay-ng
- Objective: Force clients to fake AP
- Ethics: Understand social engineering risk

**7.9 Lab 9: Captive Portal Phishing**
- Setup: Evil Twin + captive portal
- Task: Create fake login page
- Tools: Bettercap, custom HTML
- Deliverable: Credential harvesting demo (lab only!)
- Defense: User awareness training

**7.10 Lab 10: Man-in-the-Middle**
- Setup: Evil Twin + routing
- Task: Intercept HTTP traffic
- Tools: Bettercap, SSL strip, Wireshark
- Observe: Unencrypted credentials
- Defense: HTTPS enforcement

**7.11 Lab 11: Client Isolation Bypass**
- Setup: AP dengan client isolation
- Task: Test & bypass jika mungkin
- Tools: nmap, ARP inspection
- Understanding: Client isolation limitations

**7.12 Lab 12: Hidden SSID Discovery**
- Setup: AP dengan hidden SSID
- Task: Discover SSID
- Methods: Probe response capture
- Tools: airodump-ng, Wireshark
- Lesson: "Hidden" bukan "secure"

**🎯 Milestone VII:** Semua attack vectors dicoba, understood deeply

**📝 Major Project:** Dokumentasi lengkap semua labs dengan pcap + screenshot

---

## 🔨 FASE VIII: ADVANCED OFFENSIVE (4-5 hari)

### **Bagian VIII — Optimization & Automation**

**8.1 Wordlist Strategy**
- Targeted wordlists vs generic
- Rockyou.txt & variants
- Language-specific lists
- Custom wordlist creation
- **Tools**: crunch, cewl, cupp

**8.2 Hashcat Advanced**
- Rule-based attacks
- Mask attacks untuk patterns
- Combinator attacks
- Hybrid modes
- Session management
- Distributed cracking concepts

**8.3 GPU Acceleration**
- CUDA vs OpenCL
- Benchmarking hashrate
- Thermal management
- Cloud GPU (ethical considerations)

**8.4 Automation Scripting**
- Bash scripts untuk recon
- Python untuk parsing
- Automated handshake capture
- Report generation
- Cron jobs untuk scheduled scans (lab)

**8.5 Custom Tool Development**
- Python + Scapy untuk packet crafting
- Frame injection custom
- Parsing pcap programmatically
- API integration (Wigle, Shodan untuk research)

**8.6 Advanced Packet Analysis**
- Beacon analysis untuk firmware fingerprinting
- Timing attacks
- Retry pattern analysis
- Client behavior profiling

**8.7 Evasion Techniques**
- Randomizing MAC addresses
- Timing attacks untuk avoid detection
- Low-power transmission
- Channel hopping patterns

**🎯 Milestone VIII:** Optimize workflows, automate repetitive tasks

**📝 Project:** Buat tool automation sederhana (bash/python)

---

## 🛡️ FASE IX: DEFENSIVE SECURITY (4-5 hari)

### **Bagian IX — Hardening & Defense**

**9.1 Secure Configuration Baseline**
- WPA3 deployment (jika support)
- WPA2 dengan strong passphrase (16+ chars)
- Disable WPS completely
- Disable WPS PIN method
- Change default SSID & admin credentials
- Firmware updates

**9.2 Network Segmentation**
- VLAN untuk user groups
- Guest network isolation
- IoT network separation
- Management VLAN
- ACLs & firewall rules

**9.3 Authentication Hardening**
- 802.1X deployment
- RADIUS server hardening
- Certificate management
- MFA untuk admin access
- Passphrase rotation policy

**9.4 Monitoring & Detection**
- **WIDS/WIPS** (Wireless IDS/IPS)
- Kismet untuk rogue AP detection
- Snort rules untuk Wi-Fi
- Log aggregation (Syslog, SIEM)
- Alerting thresholds

**9.5 Wireless IDS Setup**
- Kismet configuration
- Alert rules untuk deauth storms
- Rogue AP detection
- Client anomaly detection
- Integration dengan SOC

**9.6 Incident Response Plan**
- Detection phase
- Containment: Isolate compromised network
- Eradication: Remove attacker access
- Recovery: Restore normal operations
- Lessons learned

**9.7 Forensics & Investigation**
- Preserve evidence (pcap, logs)
- Timeline creation
- Attribution (jika mungkin)
- Legal considerations
- Reporting to authorities

**9.8 Pentesting Defensively**
- Regular self-assessment
- Red team vs Blue team exercises
- Vulnerability scanning
- Penetration testing schedule

**9.9 User Awareness Training**
- Social engineering risks
- Evil Twin recognition
- Public Wi-Fi best practices
- VPN usage
- Reporting suspicious activity

**9.10 Hardening Checklist**
- Complete checklist untuk deployment
- Verification steps
- Compliance mapping (PCI-DSS, HIPAA jika relevan)
- Audit procedures

**🎯 Milestone IX:** Lab network fully hardened, dapat detect attacks

**📝 Project:** Buat "Wireless Security Policy" document lengkap

---

## 🎓 FASE X: ENTERPRISE & ADVANCED (5 hari - Optional)

### **Bagian X — Professional-Level Topics**

**10.1 Enterprise Wi-Fi Architecture**
- Controller-based vs cloud-managed
- Cisco WLC, Aruba, Ruckus, UniFi
- Centralized management
- Zero-touch provisioning
- Scalability considerations

**10.2 802.1X Deep-Dive**
- EAP-TLS certificate workflow
- PEAP/MSCHAPv2
- EAP-TTLS dengan inner auth
- Machine vs user authentication
- Troubleshooting auth failures

**10.3 High-Density Deployments**
- Stadium, conference, campus scenarios
- Spectrum management
- Channel planning automation (RRM)
- Load balancing
- Band steering (2.4 vs 5 GHz)

**10.4 Roaming Protocols**
- 802.11r (Fast Roaming)
- 802.11k (Neighbor reports)
- 802.11v (BSS transition)
- Security implications

**10.5 IoT & BYOD Strategies**
- Device fingerprinting
- NAC (Network Access Control)
- Profiling & policies
- Zero Trust architecture

**10.6 Advanced Attacks Research**
- Dragonblood details
- Kr00k vulnerability
- FragAttacks technical analysis
- Reading CVEs & advisories

**10.7 Software-Defined Radio (SDR)**
- GNU Radio basics
- RF spectrum analysis
- Protocol reverse engineering
- Jamming detection (defensive)

**10.8 Firmware Analysis**
- Extracting firmware dari devices
- Binwalk usage
- Identifying vulnerabilities
- Responsible disclosure process

**10.9 Side-Channel & Physical Attacks**
- Timing attacks
- Power analysis (theoretical)
- Physical access scenarios
- Supply chain security

**10.10 Mesh & Ad-Hoc Networks**
- Wi-Fi Mesh (802.11s)
- Security challenges
- Use cases
- Military/tactical networks

**10.11 Research Paper Reading**
- How to read academic papers
- Staying updated (arXiv, conferences)
- Reproducing research
- Contributing to community

**🎯 Milestone X:** Enterprise-ready knowledge, dapat diskusi di level expert

**📝 Project:** Review & presentasi 1 research paper recent

---

## 📄 FASE XI: PROFESSIONALISM (2-3 hari)

### **Bagian XI — Reporting & Communication**

**11.1 Pentest Report Structure**
- Executive summary (non-technical)
- Scope & methodology
- Findings (vulnerabilities)
- Risk ratings (CVSS)
- Evidence (screenshots, pcaps)
- Remediation recommendations
- Timeline

**11.2 Report Writing Best Practices**
- Clarity & conciseness
- Audience adaptation
- Visual aids
- Avoid jargon (executive audience)
- Technical appendix (technical audience)

**11.3 Documentation Standards**
- Reproducibility
- Evidence preservation
- Chain of custody
- Legal considerations

**11.4 Responsible Disclosure**
- Vendor contact
- Disclosure timeline (90 days standard)
- CVE request process
- Bug bounty platforms
- Ethics vs profit

**11.5 Client Communication**
- Setting expectations
- Progress updates
- Findings delivery
- Remediation support
- Post-engagement follow-up

**11.6 Templates & Tools**
- Markdown reports
- LaTeX untuk professional PDF
- Dradis Framework
- Serpico
- Custom templates

**🎯 Milestone XI:** Bisa deliver professional pentest report

**📝 Project:** Buat mock pentest report dari lab VII-VIII

---

## 🏆 FASE XII: MASTERY & ASSESSMENT (1 minggu)

### **Bagian XII — Final Evaluation**

**12.1 Comprehensive Labs (Tiered)**

**Beginner Challenge:**
- Scenario: Small office network
- Task: Recon, identify weaknesses, recommend fixes
- Time: 2 hours
- Deliverable: Short report

**Intermediate Challenge:**
- Scenario: Mid-size company dengan multiple APs
- Task: Full assessment (offense + defense)
- Time: 4 hours
- Deliverable: Professional report

**Advanced Challenge:**
- Scenario: Enterprise dengan WPA3, 802.1X, segmentation
- Task: Comprehensive audit + hardening
- Time: 8 hours
- Deliverable: Executive + technical report

**12.2 Quiz Bank**
- 50 soal pilihan ganda (teori)
- 20 soal praktis (command-based)
- Passing score: 70%

**12.3 Final Capstone Project**
- Build complete lab dari nol
- Document everything
- Perform self-assessment
- Implement defenses
- Present findings

**12.4 Self-Assessment Rubric**
```
[ ] Teori networking: Score __/10
[ ] Protokol security: Score __/10
[ ] Tool mastery: Score __/10
[ ] Offensive skills: Score __/10
[ ] Defensive skills: Score __/10
[ ] Reporting: Score __/10
```

**12.5 Career Readiness**
- Resume building
- Portfolio creation (GitHub)
- Certification roadmap:
  - CEH (Certified Ethical Hacker)
  - OSWP (Offensive Security Wireless Professional)
  - CWSP (Certified Wireless Security Professional)
  - OSCP (step up)
- Interview prep
- Community contribution

**12.6 Post-Course Plan**
- Continuous learning plan
- Stay updated sources
- Practice regimen
- Community engagement

**🎯 Milestone XII:** Confident, competent, certified-ready

**📝 Major Deliverable:** Complete portfolio + capstone report

---

## 📚 BAGIAN XIII: APPENDIX & REFERENCES

### **13.1 Glossary Lengkap**
Semua istilah A-Z dengan definisi:
- SSID, BSSID, ESSID, PMK, PTK, GTK, SAE, EAP, RADIUS, WLC, dll

### **13.2 Command Cheat-Sheets**

**Aircrack-ng:**
```bash
airmon-ng start wlan0
airodump-ng wlan0mon
aireplay-ng -0 10 -a [BSSID] wlan0mon
aircrack-ng -w wordlist.txt capture.cap
