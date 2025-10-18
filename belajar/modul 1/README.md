# Materi 1 - Pengenalan Jaringan Wireless: Fundamental, Teknologi, dan Aspek Keamanan

## 1.1. Perbedaan Mendasar Jaringan Kabel dan Nirkabel

### 1.1.1. Jaringan Kabel (Wired Network)
Jaringan yang menggunakan media transmisi fisik untuk mentransmisikan data antar perangkat.

**Media Transmisi:**
- **Twisted Pair (UTP/STP)**: Kabel tembaga dengan lilitan, kategori Cat5e hingga Cat8
- **Coaxial**: Kabel dengan konduktor tunggal, digunakan untuk TV kabel dan broadband
- **Fiber Optic**: Serat kaca/plastik menggunakan cahaya, single-mode dan multi-mode

**Karakteristik Teknis:**
- **Kecepatan**: 10 Mbps hingga 100 Gbps (tergantung kategori kabel)
- **Latensi**: Sangat rendah (biasanya <1ms)
- **Bandwidth**: Dedicated untuk setiap koneksi
- **Topologi**: Star, bus, ring dengan kabel dedicated

**Keunggulan:**
- Performa konsisten dan predictable
- Keamanan fisik yang baik
- Minimal interferensi elektromagnetik
- Lifetime yang panjang

### 1.1.2. Jaringan Nirkabel (Wireless Network)
Jaringan yang menggunakan gelombang elektromagnetik untuk transmisi data melalui medium udara.

**Media Transmisi:**
- **Radio Frequency (RF)**: Gelombang radio 2.4GHz, 5GHz, 6GHz
- **Infrared**: Gelombang cahaya tidak terlihat (jarang digunakan)
- **Microwave**: Point-to-point jarak jauh

**Karakteristik Teknis:**
- **Kecepatan**: 11 Mbps hingga 9.6 Gbps (tergantung standar)
- **Latensi**: Variabel (1-30ms)
- **Bandwidth**: Shared medium (semua user berbagi)
- **Topologi**: Infrastructure, ad-hoc, mesh

**Keunggulan:**
- Mobilitas tinggi
- Deployment cepat dan fleksibel
- Biaya instalasi awal lebih rendah
- Skalabilitas mudah

### 1.1.3. Analisis Perbandingan Komprehensif

| Aspek | Jaringan Kabel | Jaringan Nirkabel |
|-------|----------------|-------------------|
| **Media Transmisi** | Kabel fisik (tembaga/fiber) | Gelombang radio (RF) |
| **Kecepatan Maksimum** | 100 Gbps (Ethernet) | 9.6 Gbps (Wi-Fi 6E) |
| **Latensi Typical** | 0.1-1 ms | 1-30 ms |
| **Jangkauan** | Terbatas panjang kabel (max 100m UTP) | 30-300m (tergangan environment) |
| **Keamanan** | Physical access required | Rentan interception & attack |
| **Mobilitas** | Sangat terbatas | Sangat tinggi |
| **Biaya Instalasi** | Tinggi (material + labor) | Rendah hingga medium |
| **Maintenance** | Sulit (troubleshooting kabel) | Relatif mudah |
| **Scalability** | Terbatas (perlu penarikan kabel) | Sangat mudah |
| **Reliability** | Sangat tinggi | Moderate (tergantung environment) |
| **Interferensi** | Minimal (EMI/RFI dapat terjadi) | Tinggi (perangkat lain, obstacle) |
| **Power Requirements** | PoE available | Perangkat perlu battery/power |
| **Deployment Time** | Lama (hari/minggu) | Cepat (jam/hari) |

## 1.2. Arsitektur dan Cara Kerja Komunikasi Wireless

### 1.2.1. Fundamental Gelombang Radio

**Karakteristik Gelombang:**
- **Frequency**: Jumlah siklus per detik (Hz)
- **Wavelength**: Panjang satu siklus gelombang
- **Amplitude**: Kekuatan sinyal
- **Phase**: Posisi dalam siklus gelombang

**Modulasi Sinyal:**
- **AM (Amplitude Modulation)**: Variasi amplitudo
- **FM (Frequency Modulation)**: Variasi frekuensi
- **PM (Phase Modulation)**: Variasi phase
- **Digital Modulation**: QPSK, QAM (16-QAM, 64-QAM, 256-QAM, 1024-QAM)

### 1.2.2. Komponen Sistem Wireless

#### 1.2.2.1. Access Point (AP)
- **Fungsi**: Bridge antara wireless dan wired network
- **Komponen**: Radio transceiver, antenna, processor, network interfaces
- **Mode Operasi**:
  - Root Mode: Terhubung ke wired network
  - Repeater Mode: Extend coverage
  - Bridge Mode: Point-to-point connection
  - Mesh Mode: Self-forming, self-healing network

#### 1.2.2.2. Wireless Client Devices
- **Network Interface Card (NIC)**: Wireless adapter dengan driver
- **Antenna**: Internal/external untuk transmit/receive
- **Software**: Operating system, drivers, management utilities

#### 1.2.2.3. Wireless LAN Controller (WLC)
- **Centralized Management**: Mengelola multiple AP
- **Features**: Roaming, load balancing, security policies
- **Architecture**: Standalone atau integrated

#### 1.2.2.4. Antenna Systems
- **Omnidirectional**: Radiation 360°, coverage area luas
- **Directional**: Focused beam, jarak lebih jauh
- **Gain**: Penguatan sinyal (dBi)
- **Polarization**: Horizontal/vertical/circular

### 1.2.3. Proses Koneksi Wireless Lengkap

```
PHASE 1: DISCOVERY & SCANNING
   ┌─ Passive Scanning: Client listen beacon frames
   └─ Active Scanning: Client broadcast probe requests

PHASE 2: AUTHENTICATION
   ├─ Open System: Null authentication
   ├─ Shared Key: WEP (deprecated)
   └─ 802.1X/EAP: Enterprise authentication

PHASE 3: ASSOCIATION
   ├─ Association Request: Client → AP
   ├─ Association Response: AP → Client
   └─ Exchange MAC addresses & capabilities

PHASE 4: ADDRESS CONFIGURATION
   ├─ DHCP Discovery: Client broadcast DHCP discover
   ├─ DHCP Offer: Server offer IP address
   ├─ DHCP Request: Client request specific IP
   └─ DHCP Acknowledgment: Final confirmation

PHASE 5: SECURITY ESTABLISHMENT
   ├─ Key Exchange: 4-way handshake (WPA2/WPA3)
   ├─ Encryption Setup: Establish encryption keys
   └─ Secure Data Transfer: Encrypted communication
```

### 1.2.4. Spectrum dan Channel Management

#### 2.4 GHz ISM Band
- **Range**: 2.400 - 2.4835 GHz
- **Channels**: 14 channels (tergantung region)
- **Non-overlapping**: Channels 1, 6, 11 (Americas)
- **Bandwidth**: 20 MHz atau 40 MHz (HT40)
- **Advantages**: Better range, wall penetration
- **Disadvantages**: Crowded, banyak interferensi

#### 5 GHz UNII Band
- **UNII-1**: 5.150 - 5.250 GHz (Indoor)
- **UNII-2A**: 5.250 - 5.350 GHz (Indoor/Outdoor)
- **UNII-2C**: 5.470 - 5.725 GHz (Indoor/Outdoor)
- **UNII-3**: 5.725 - 5.850 GHz (Outdoor)
- **Advantages**: Less crowded, more channels, higher speed
- **Disadvantages**: Shorter range, poorer penetration

#### 6 GHz Band (Wi-Fi 6E)
- **Range**: 5.925 - 7.125 GHz
- **Channels**: 59x 20MHz, 29x 40MHz, 14x 80MHz, 7x 160MHz
- **Advantages**: Massive bandwidth, no legacy devices
- **Requirements**: Wi-Fi 6E compatible devices

### 1.2.5. Evolusi Standar IEEE 802.11

| Standar | Tahun | Frekuensi | Kecepatan Max | Teknologi | Use Case |
|---------|-------|-----------|---------------|-----------|----------|
| **802.11** | 1997 | 2.4 GHz | 2 Mbps | FHSS/DSSS | Legacy |
| **802.11b** | 1999 | 2.4 GHz | 11 Mbps | DSSS | Home/Office |
| **802.11a** | 1999 | 5 GHz | 54 Mbps | OFDM | Enterprise |
| **802.11g** | 2003 | 2.4 GHz | 54 Mbps | OFDM | Consumer |
| **802.11n** | 2009 | 2.4/5 GHz | 600 Mbps | MIMO, 40MHz | Mainstream |
| **802.11ac** | 2013 | 5 GHz | 6.9 Gbps | MU-MIMO, 160MHz | High-performance |
| **802.11ax** | 2019 | 2.4/5/6 GHz | 9.6 Gbps | OFDMA, BSS Color | Wi-Fi 6/6E |
| **802.11be** | 2024(est) | 2.4/5/6 GHz | 40 Gbps | Multi-link, 320MHz | Wi-Fi 7 |

### 1.2.6. Frame Structure 802.11

**Komponen Frame:**
```
[ MAC Header ] [ Frame Body ] [ FCS ]
    
MAC Header Structure:
│ 2 bytes │ 2 bytes │ 6 bytes │ 6 bytes │ 6 bytes │ 2 bytes │ 6 bytes │ 2 bytes │
│ Frame   │ Duration│ Address 1│ Address 2│ Address 3│ Sequence│ Address 4│ QoS     │
│ Control │ /ID     │ (RA)     │ (TA)     │ (DA/SA)  │ Control │ (optional)│ Control │
```

**Frame Types:**
- **Management Frames**: Beacon, probe, authentication, association
- **Control Frames**: RTS, CTS, ACK, power save poll
- **Data Frames**: Carry actual data payload

## 1.3. Analisis Mendalam Kelebihan dan Kelemahan Wireless

### 1.3.1. Kelebihan Jaringan Nirkabel

#### 1. Enhanced Mobility and Flexibility
- **Seamless Roaming**: Perpindahan antar AP tanpa disconnect
- **Hot Desking**: User dapat bekerja dari lokasi mana pun
- **BYOD (Bring Your Own Device)**: Support personal devices
- **Temporary Deployments**: Event, conference, emergency response

#### 2. Cost Efficiency and Rapid Deployment
- **Reduced CAPEX**: Tidak perlu investasi kabel infrastructure
- **Lower Installation Cost**: No cabling, conduit, or drops
- **Quick Setup**: Operational dalam hitungan jam
- **Minimal Disruption**: Tidak perlu structural modifications

#### 3. Scalability and Adaptability
- **Easy Expansion**: Tambah AP untuk coverage tambahan
- **Flexible Capacity**: Scale up/down berdasarkan kebutuhan
- **Technology Adoption**: Mudah upgrade ke standar baru
- **Network Segmentation**: Multiple SSID dengan policy berbeda

#### 4. Advanced Features and Capabilities
- **Location Services**: RTLS, asset tracking, analytics
- **Guest Management**: Captive portal, social login, vouchers
- **IoT Integration**: Support untuk sensor dan smart devices
- **Analytics and Insights**: User behavior, network utilization

### 1.3.2. Kelemahan dan Vulnerability Analysis

#### 1. Security Vulnerabilities (Critical for Pentesting)

**Reconnaissance Attacks:**
- **Wardriving**: Mobile scanning untuk discover networks
- **Packet Sniffing**: Passive monitoring dengan monitor mode
- **SSID Broadcasting**: Network discovery melalui beacon frames

**Access Control Attacks:**
- **Rogue AP**: Unauthorized access point
- **Evil Twin**: Malicious AP dengan SSID legitimate
- **MAC Spoofing**: Bypass MAC filtering
- **WPS Attacks**: Pixie dust, brute force PIN

**Integrity Attacks:**
- **Data Injection**: Manipulasi data packets
- **Replay Attacks**: Retransmisi captured data
- **Bit-Flipping**: Modifikasi encrypted data

**Confidentiality Attacks:**
- **Eavesdropping**: Passive listening to communications
- **WEP Cracking**: Statistical attacks (PTW, KoreK)
- **WPA/WPA2 Cracking**: Dictionary, brute force, PMKID
- **WPA3 Attacks**: Dragonblood vulnerabilities

**Availability Attacks:**
- **Deauthentication/Disassociation**: Force client disconnect
- **RF Jamming**: Denial of service dengan noise
- **Beacon Flood**: Create fake networks
- **Authentication Flood**: Exhaust AP resources

**Authentication Attacks:**
- **PSK Cracking**: Offline attack pada handshake
- **EAP-Leech**: Identity extraction
- **KRACK**: Key reinstallation attacks
- **Downgrade Attacks**: Force weaker security

#### 2. Performance and Reliability Challenges

**Physical Layer Issues:**
- **Path Loss**: Signal attenuation over distance
- **Multipath**: Signal reflection causing interference
- **Shadowing**: Obstacles blocking signal path
- **Fading**: Signal strength variation over time

**Interference Sources:**
- **Co-channel**: Other networks on same channel
- **Adjacent-channel**: Leakage from neighboring channels
- **Non-Wi-Fi**: Bluetooth, microwave, cordless phones
- **Environmental**: Weather, foliage, building materials

**Capacity Limitations:**
- **Half-Duplex**: Devices cannot transmit/receive simultaneously
- **CSMA/CA**: Collision avoidance overhead
- **Shared Medium**: All users share available bandwidth
- **AP Capacity**: Practical limit 25-50 active users per radio

#### 3. Operational and Management Challenges

**Configuration Complexity:**
- **Channel Planning**: Optimal channel assignment
- **Power Management**: Transmit power optimization
- **Roaming Configuration**: Seamless client handoff
- **QoS Implementation**: Traffic prioritization

**Troubleshooting Difficulties:**
- **Intermittent Issues**: Hard to reproduce problems
- **Spectrum Analysis**: Require specialized tools
- **Client Diversity**: Different device behaviors
- **Environmental Factors**: Changing RF conditions

## 1.4. Wireless Security Framework

### 1.4.1. Security Protocol Evolution

**WEP (Wired Equivalent Privacy) - ❌ DEPRECATED**
- RC4 encryption with static keys
- Vulnerable to statistical attacks
- Easily cracked within minutes

**WPA (Wi-Fi Protected Access)**
- TKIP encryption with dynamic keys
- MIC (Message Integrity Check)
- Still vulnerable to certain attacks

**WPA2 (802.11i)**
- CCMP/AES encryption
- Strong cryptographic foundation
- Vulnerable to KRACK attacks

**WPA3 (Current Standard)**
- Simultaneous Authentication of Equals (SAE)
- Forward secrecy
- 192-bit enterprise security suite

### 1.4.2. Enterprise Security Features

**Authentication Methods:**
- **802.1X/EAP**: RADIUS integration
- **EAP-TLS**: Certificate-based authentication
- **EAP-TTLS/PAP**: Tunneled authentication
- **PEAP-MSCHAPv2**: Microsoft implementation

**Advanced Security Controls:**
- **Wireless IPS/IDS**: Threat detection and prevention
- **NAC (Network Access Control)**: Policy enforcement
- **SIEM Integration**: Security monitoring and analytics
- **Behavioral Analysis**: Anomaly detection

## 1.5. Best Practices for Wireless Deployment

### 1.5.1. Security Hardening Recommendations

**Essential Security Measures:**
1. Use WPA3 or WPA2-Enterprise with 802.1X
2. Disable WPS (Wi-Fi Protected Setup)
3. Implement strong passphrases (min 20 characters)
4. Enable MAC address filtering (supplementary)
5. Hide SSID (limited effectiveness)
6. Regular firmware updates
7. Segment guest traffic

**Advanced Security Controls:**
- Certificate-based authentication
- Wireless intrusion prevention system
- Regular security assessments
- Continuous monitoring and logging

### 1.5.2. Performance Optimization

**Coverage Planning:**
- Site survey and heat mapping
- Proper AP placement and orientation
- Channel planning and power adjustment
- Load balancing and band steering

**Capacity Management:**
- User density planning
- Quality of Service (QoS) implementation
- Bandwidth management policies
- Regular performance monitoring

## Kesimpulan dan Rekomendasi

Jaringan wireless telah berkembang dari teknologi convenience menjadi critical infrastructure component. Pemahaman mendalam tentang arsitektur, operation, dan security aspects adalah fundamental untuk:

1. **Network Designers**: Membangun jaringan yang robust dan secure
2. **Administrators**: Manage dan maintain optimal performance
3. **Security Professionals**: Identify dan mitigate vulnerabilities
4. **Penetration Testers**: Assess security posture secara comprehensive

> **Ethical Consideration**: Selalu operate within legal boundaries. Dapatkan proper authorization sebelum melakukan security testing. Document semua activities dan maintain confidentiality of findings.

---
**Langkah Selanjutnya**: Pada materi berikutnya akan dibahas wireless penetration testing methodology, tools, dan techniques untuk comprehensive security assessment.

---
*Materi ini disusun untuk tujuan edukasi dan professional development dalam bidang keamanan jaringan wireless. Always practice responsible disclosure and ethical hacking principles.*
