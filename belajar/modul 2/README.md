# Modul 2: Standar dan Protokol Wi-Fi - Arsitektur, Teknologi, dan Implementasi

## 2.1. Evolusi Standar IEEE 802.11

### 2.1.1. Generasi Awal Wi-Fi

**802.11 (1997) - The Foundation**
- **Frekuensi**: 2.4 GHz ISM band
- **Kecepatan**: 1-2 Mbps
- **Modulasi**: FHSS (Frequency-Hopping Spread Spectrum) dan DSSS (Direct Sequence Spread Spectrum)
- **Status**: Legacy, tidak digunakan lagi

**802.11b (1999) - Wi-Fi untuk Masses**
- **Frekuensi**: 2.4 GHz
- **Kecepatan**: 1, 2, 5.5, 11 Mbps
- **Modulasi**: DSSS dengan CCK (Complementary Code Keying)
- **Kekurangan**: Rentan interferensi, keamanan lemah (WEP)

**802.11a (1999) - Enterprise Grade**
- **Frekuensi**: 5 GHz UNII band
- **Kecepatan**: 6, 9, 12, 18, 24, 36, 48, 54 Mbps
- **Modulasi**: OFDM (Orthogonal Frequency Division Multiplexing)
- **Keunggulan**: Less crowded spectrum, better for high-density areas

### 2.1.2. Generasi Menengah

**802.11g (2003) - The Compromise**
- **Frekuensi**: 2.4 GHz
- **Kecepatan**: Hingga 54 Mbps
- **Kompatibilitas**: Backward compatible dengan 802.11b
- **Teknologi**: OFDM seperti 802.11a tetapi di 2.4 GHz

**802.11n (2009) - Wi-Fi 4 - Revolusi Performance**
- **Frekuensi**: 2.4 GHz dan 5 GHz (simultaneous dual-band)
- **Kecepatan**: 150-600 Mbps (tergantung konfigurasi)
- **Teknologi Kunci**:
  - **MIMO**: Multiple Input Multiple Output (hingga 4x4)
  - **Channel Bonding**: 20 MHz → 40 MHz
  - **Frame Aggregation**: A-MSDU, A-MPDU
  - **Guard Interval**: 800ns → 400ns (opsional)

### 2.1.3. Generasi Modern

**802.11ac (2013) - Wi-Fi 5 - Gigabit Wireless**
- **Frekuensi**: 5 GHz only
- **Kecepatan**: 433 Mbps hingga 6.93 Gbps
- **Teknologi Kunci**:
  - **MU-MIMO**: Multi-User MIMO (downlink only)
  - **Channel Bonding**: 80 MHz, 160 MHz
  - **Higher Modulation**: 256-QAM
  - **Beamforming**: Explicit beamforming
- **Spatial Streams**: Hingga 8x8 (teoritis)

**802.11ax (2019/2020) - Wi-Fi 6/6E - Efficiency Revolution**
- **Frekuensi**: 2.4 GHz, 5 GHz, 6 GHz (Wi-Fi 6E)
- **Kecepatan**: Hingga 9.6 Gbps
- **Teknologi Kunci**:
  - **OFDMA**: Orthogonal Frequency Division Multiple Access
  - **UL/DL MU-MIMO**: Uplink dan Downlink
  - **1024-QAM**: Higher modulation efficiency
  - **BSS Coloring**: Spatial reuse
  - **TWT**: Target Wake Time untuk power saving

**802.11be (2024 est.) - Wi-Fi 7 - Next Generation**
- **Frekuensi**: 2.4 GHz, 5 GHz, 6 GHz (tri-band)
- **Kecepatan**: Hingga 46 Gbps
- **Teknologi Kunci**:
  - **Multi-Link Operation (MLO)**: Aggregation across bands
  - **320 MHz Channels**: Double Wi-Fi 6 bandwidth
  - **4096-QAM**: Higher order modulation
  - **Enhanced MU-MIMO**: 16 spatial streams
  - **Multi-AP Coordination**: Coordinated beamforming

## 2.2. Analisis Komparatif Mendalam

### 2.2.1. Tabel Perbandingan Komprehensif

| Parameter | 802.11a | 802.11b | 802.11g | 802.11n | 802.11ac | 802.11ax | 802.11be |
|-----------|---------|---------|---------|---------|----------|----------|----------|
| **Tahun Rilis** | 1999 | 1999 | 2003 | 2009 | 2013 | 2019 | 2024 |
| **Wi-Fi Alliance** | - | - | - | Wi-Fi 4 | Wi-Fi 5 | Wi-Fi 6/6E | Wi-Fi 7 |
| **Frekuensi** | 5 GHz | 2.4 GHz | 2.4 GHz | 2.4/5 GHz | 5 GHz | 2.4/5/6 GHz | 2.4/5/6 GHz |
| **Kecepatan Max** | 54 Mbps | 11 Mbps | 54 Mbps | 600 Mbps | 6.93 Gbps | 9.6 Gbps | 46 Gbps |
| **Channel Width** | 20 MHz | 20 MHz | 20 MHz | 20/40 MHz | 20/40/80/160 MHz | 20/40/80/160 MHz | 20/40/80/160/320 MHz |
| **Spatial Streams** | 1 | 1 | 1 | 1-4 | 1-8 | 1-8 | 1-16 |
| **Modulation** | 64-QAM | DBPSK/DQPSK | 64-QAM | 64-QAM | 256-QAM | 1024-QAM | 4096-QAM |
| **MIMO Type** | SISO | SISO | SISO | SU-MIMO | MU-MIMO DL | MU-MIMO UL/DL | Enhanced MU-MIMO |
| **Key Features** | OFDM | DSSS | OFDM | MIMO, Aggregation | Beamforming, Wide Channels | OFDMA, BSS Color | MLO, 320MHz |

### 2.2.2. Analisis Performa Real-World

**Throughput Typical (Practical) vs Theoretical:**
- **802.11n**: Theoretical 600 Mbps → Practical 100-250 Mbps
- **802.11ac**: Theoretical 6.9 Gbps → Practical 400-800 Mbps (single client)
- **802.11ax**: Theoretical 9.6 Gbps → Practical 600-1200 Mbps
- **802.11be**: Theoretical 46 Gbps → Practical 2-4 Gbps (estimated)

**Range Comparison (Indoor):**
- **2.4 GHz**: Excellent (30-50 meters through walls)
- **5 GHz**: Good (15-30 meters through walls)  
- **6 GHz**: Fair (10-20 meters through walls)

## 2.3. Deep Dive: Frekuensi dan Spectrum Analysis

### 2.3.1. 2.4 GHz Band (ISM Band)

**Channel Allocation:**
```
Channel 1: 2.401 - 2.423 GHz
Channel 6: 2.426 - 2.448 GHz  
Channel 11: 2.451 - 2.473 GHz
Channel 14: 2.484 GHz (Japan only)
```

**Karakteristik:**
- **Advantages**:
  - Better penetration through walls and obstacles
  - Longer range coverage
  - Better legacy device compatibility
- **Disadvantages**:
  - Only 3 non-overlapping channels (1, 6, 11)
  - High congestion in urban areas
  - Interference from Bluetooth, microwave ovens, cordless phones

### 2.3.2. 5 GHz Band (UNII Bands)

**Band Segmentation:**
- **UNII-1** (5.150-5.250 GHz): Indoor use, DFS required for some channels
- **UNII-2A** (5.250-5.350 GHz): Indoor/Outdoor, DFS & TPC required
- **UNII-2C** (5.470-5.725 GHz): Indoor/Outdoor, DFS & TPC required  
- **UNII-3** (5.725-5.850 GHz): Outdoor, ISP backhaul

**Channel Availability:**
- 25 non-overlapping 20MHz channels
- 12 non-overlapping 40MHz channels
- 6 non-overlapping 80MHz channels
- 2 non-overlapping 160MHz channels

### 2.3.3. 6 GHz Band (Wi-Fi 6E/7)

**Spectrum Allocation:**
- **Low Band**: 5.925 - 6.425 GHz (500 MHz)
- **Mid Band**: 6.425 - 6.875 GHz (450 MHz)  
- **High Band**: 6.875 - 7.125 GHz (250 MHz)

**Channel Capacity:**
- 59x 20MHz channels
- 29x 40MHz channels
- 14x 80MHz channels
- 7x 160MHz channels
- 3x 320MHz channels

**Regulatory Modes:**
- **LPI (Low Power Indoor)**: Standard indoor access points
- **Standard Power**: Outdoor with AFC (Automated Frequency Coordination)
- **Very Low Power**: Short-range applications

## 2.4. Channel Management dan Advanced Technologies

### 2.4.1. Channel Bonding Mechanisms

**Evolution of Channel Bonding:**
```
802.11a/g: 20 MHz only
802.11n: 20 MHz or 40 MHz (2x20 MHz bonded)
802.11ac: 20, 40, 80, 160 MHz (8x20 MHz bonded)
802.11ax: 20, 40, 80, 160 MHz + 80+80 MHz
802.11be: 20, 40, 80, 160, 320 MHz
```

**Impact on Performance:**
- **Throughput**: Linear increase with channel width
- **Range**: Decreases with wider channels (higher noise floor)
- **Interference**: Increases probability of co-channel interference

### 2.4.2. Dynamic Frequency Selection (DFS)

**Purpose**: Detect and avoid radar systems in 5 GHz band
**Channels Affected**: UNII-2 bands (52-64, 100-140)
**Requirements**: 
- AP must monitor for radar signals
- Immediate channel vacate if radar detected
- 60-second channel availability check before use

### 2.4.3. Transmit Power Control (TPC)

**Purpose**: Automatically adjust transmit power to minimize interference
**Benefits**:
- Reduced co-channel interference
- Improved battery life for mobile devices
- Better network density support

## 2.5. Service Set Architecture dan Network Identification

### 2.5.1. SSID (Service Set Identifier)

**Definition**: Human-readable network name (32-byte string)
**Operations**:
- **Broadcast SSID**: Visible to all clients (default)
- **Hidden SSID**: SSID not broadcast in beacon frames
- **Multiple SSID**: Single AP broadcasting multiple networks

**Security Considerations**:
- Hidden SSID provides minimal security (security through obscurity)
- SSID can be discovered through probe requests/responses
- Best practice: Use strong authentication instead of hiding SSID

### 2.5.2. BSSID (Basic Service Set Identifier)

**Definition**: MAC address of the wireless access point's radio
**Format**: 48-bit MAC address (e.g., 00:1A:2B:3C:4D:5E)
**Usage**:
- Unique identifier for each AP radio
- Used in frame addressing
- Essential for roaming decisions

**Virtual BSSID**: Modern APs can create multiple BSSIDs for different SSIDs/VLANs

### 2.5.3. ESSID (Extended Service Set Identifier)

**Definition**: Logical network spanning multiple APs
**Architecture**:
```
Multiple BSS (Basic Service Sets) → Single ESS (Extended Service Set)
      AP1 (BSSID: MAC1)                 |
      AP2 (BSSID: MAC2)     →     ESSID: "Corporate-WiFi"
      AP3 (BSSID: MAC3)                 |
```

**Roaming Support**:
- Seamless client movement between APs
- Same security policies across all APs
- Centralized management through WLC (Wireless LAN Controller)

### 2.5.4. Advanced Service Set Concepts

**MBSSID (Multiple BSSID)**
- Single AP advertising multiple networks
- Reduced beacon overhead
- Different security policies per BSSID

**Mesh BSS (MBSS)**
- Self-forming, self-healing wireless backhaul
- Used for outdoor deployments, large areas
- Dynamic path selection

## 2.6. Teknologi Kunci dalam Standar Modern

### 2.6.1. MIMO Technologies Evolution

**SU-MIMO (Single-User MIMO)**
- Multiple streams to single client
- Client must support multiple antennas
- Wasted capacity if client has fewer antennas

**MU-MIMO (Multi-User MIMO)**
- Simultaneous transmission to multiple clients
- **802.11ac**: Downlink only (DL MU-MIMO)
- **802.11ax**: Uplink and Downlink (UL/DL MU-MIMO)
- Requires precise channel state information

### 2.6.2. OFDMA (Orthogonal Frequency Division Multiple Access)

**Concept**: Divide channel into smaller subcarriers (Resource Units)
**Benefits**:
- Serve multiple clients simultaneously
- Better efficiency for small packets
- Reduced latency for real-time applications

**Resource Unit (RU) Types**:
- 26-tone, 52-tone, 106-tone, 242-tone, 484-tone, 996-tone
- Dynamic allocation based on client needs

### 2.6.3. Beamforming Techniques

**Implicit Beamforming**: 
- Client feedback based on channel estimation
- Compatible with older clients

**Explicit Beamforming**:
- Detailed channel state information
- Better performance but requires client support

### 2.6.4. Multi-Link Operation (MLO) - Wi-Fi 7

**Revolutionary Feature**: Simultaneous operation across multiple bands
**Operation Modes**:
- **Aggregation**: Combine throughput from multiple links
- **Switching**: Dynamically select best available link
- **Redundancy**: Simultaneous transmission for reliability

**Benefits**:
- Lower latency (sub-1ms target)
- Higher reliability
- Better load balancing

## 2.7. Deployment Considerations dan Best Practices

### 2.7.1. Channel Planning Strategies

**2.4 GHz Band**:
- Use only channels 1, 6, 11 (non-overlapping)
- Lower power to reduce co-channel interference
- Consider disabling 2.4 GHz if 5 GHz coverage is sufficient

**5 GHz Band**:
- Prefer UNII-1 channels for critical applications
- Use DFS channels for additional capacity
- Implement 80MHz channels where spectrum allows

**6 GHz Band**:
- Leverage wide channels (160MHz, 320MHz)
- Implement automated frequency coordination
- Consider LPI vs Standard Power deployment

### 2.7.2. Security Implications by Standard

**Legacy Risks**:
- 802.11b/g: WEP vulnerabilities
- Older devices as entry points
- Downgrade attacks

**Modern Protections**:
- WPA3 mandatory for Wi-Fi 6 certification
- SAE (Simultaneous Authentication of Equals) for PSK
- 192-bit security suite for enterprise

### 2.7.3. Migration Strategy Recommendations

**Current Best Practice**: Wi-Fi 6 (802.11ax) for new deployments
**Future-Proofing**: Wi-Fi 6E for high-density environments
**Cutting-Edge**: Wi-Fi 7 for latency-sensitive applications

## 2.8. Case Studies dan Real-World Applications

### 2.8.1. Enterprise Office Deployment
- **Standard**: Wi-Fi 6/6E
- **Channel Planning**: 20MHz in 2.4GHz, 40MHz in 5GHz
- **Features**: OFDMA for high density, BSS coloring for interference management

### 2.8.2. High-Density Venue (Stadium, Conference)
- **Standard**: Wi-Fi 6E with 6 GHz band
- **Strategy**: Small cells, high frequency reuse
- **Features**: MU-MIMO, advanced beamforming

### 2.8.3. Industrial IoT Applications
- **Standard**: Wi-Fi 6 for reliability
- **Requirements**: Deterministic latency, high reliability
- **Features**: TWT for battery-powered sensors

---

**Kesimpulan Modul 2**: Pemahaman mendalam tentang standar Wi-Fi dan protokol yang mendasarinya sangat penting untuk merancang, mengimplementasikan, dan mengamankan jaringan wireless yang optimal. Setiap generasi membawa peningkatan tidak hanya dalam kecepatan, tetapi juga dalam efisiensi, keandalan, dan keamanan.

**Next Module Preview**: Modul 3 akan membahas Wireless Security Protocols, Vulnerabilities, dan Penetration Testing Methodologies.
