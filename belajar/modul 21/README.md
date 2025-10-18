# Modul 21: Advanced Attacks

## Krack Attack (Key Reinstallation)

- **Definisi**: Key Reinstallation Attack adalah eksploitasi kritis pada protokol WPA2 4-way handshake yang memaksa reinstallasi kunci enkripsi, memungkinkan attacker untuk decrypt, replay, atau forge paket wireless.
- **Kerentanan**:
  - **4-Way Handshake Flaw**: Protokol WPA2 mengizinkan retransmission message 3 dari handshake jika ACK tidak diterima AP.
  - **Nonce Reuse**: Ketika message 3 di-replay, klien reinstall PTK (Pairwise Transient Key) dan reset nonce counter.
  - **Encryption Key Stream Reuse**: Dengan nonce sama, attacker dapat XOR ciphertext untuk decrypt data atau inject paket.
- **Cara Kerja**:
  1. Attacker posisi sebagai MitM antara klien dan AP (channel-based MitM dengan dua adapter).
  2. Klien mulai 4-way handshake dengan AP, terima message 3.
  3. Attacker block ACK dari klien ke AP.
  4. AP retransmit message 3, klien reinstall PTK dan reset nonce.
  5. Attacker capture paket dengan nonce sama untuk decrypt atau forge paket baru.
- **Dampak**:
  - **Decryption**: Decrypt traffic HTTP, DNS, atau data plaintext dalam tunnel.
  - **Packet Injection**: Inject paket TCP atau UDP palsu ke dalam koneksi.
  - **TCP Hijacking**: Manipulasi traffic untuk MITM attack atau malware injection.
  - **Downgrade Attack**: Force klien menggunakan weak encryption (group key).
- **Langkah-langkah dengan krackattacks-scripts**:
  1. Clone repository: `git clone https://github.com/vanhoefm/krackattacks-scripts.git`.
  2. Install dependencies: `cd krackattacks-scripts && sudo apt install libnl-3-dev libnl-genl-3-dev`.
  3. Setup dua wireless adapter: satu untuk rogue AP (wlan0), satu untuk channel-based MitM (wlan1).
  4. Edit konfigurasi: `nano krackattack/krack-test-client.py` (sesuaikan interface dan target).
  5. Jalankan rogue AP: `sudo hostapd hostapd.conf` (clone SSID dan config target AP).
  6. Jalankan KRACK test: `sudo python krack-test-client.py`.
  7. Script otomatis replay message 3, monitor output untuk nonce reinstallation.
  8. Capture traffic dengan Wireshark untuk analisis decryption: `sudo wireshark -i wlan1`.
- **Deteksi dan Mitigasi**:
  - **Patch**: Update firmware/driver klien dan AP ke versi post-October 2017.
  - **Detection**: Monitor retransmission message 3 yang berlebihan atau anomali nonce reset.
- **Kelebihan**: Fundamental flaw di WPA2 protocol, affect hampir semua device sebelum patch, powerful untuk MITM dan decryption.
- **Kekurangan**: Memerlukan dua adapter dengan monitor mode dan injection, complex setup channel-based MitM, tidak efektif pada device yang sudah patched.
- **Contoh Penggunaan**: Test kerentanan KRACK pada smartphone Android lama (pre-patch) di lab untuk decrypt HTTPS traffic dengan nonce reuse.

## Dragonblood (WPA3 Vulnerability)

- **Definisi**: Kumpulan kerentanan pada WPA3-SAE (Simultaneous Authentication of Equals) yang memungkinkan downgrade attack, side-channel attack, dan denial of service pada handshake WPA3.
- **Kerentanan Utama**:
  - **Downgrade Attack**: Memaksa AP dan klien menggunakan WPA2 meskipun support WPA3 (transition mode vulnerability).
  - **Side-Channel Leaks**: Timing atau cache-based attack pada implementasi SAE untuk ekstraksi password.
  - **Denial of Service**: Resource exhaustion dengan commit frame flood selama SAE handshake.
  - **Dictionary Attack**: Offline attack pada SAE handshake dengan capture frame untuk password cracking.
- **CVE Terkait**:
  - **CVE-2019-9494**: Timing-based side-channel pada SAE handshake.
  - **CVE-2019-9495**: Cache-based side-channel untuk password leakage.
  - **CVE-2019-9497**: Reflection attack untuk DoS SAE.
  - **CVE-2019-9498**: EAP-pwd side-channel (terkait WPA3-Enterprise).
- **Cara Kerja (Downgrade Attack)**:
  1. Attacker scan network dengan WPA3-SAE dan WPA2-PSK transition mode.
  2. Attacker buat rogue AP dengan SSID sama, hanya advertise WPA2-PSK (bukan WPA3).
  3. Klien yang support WPA3 tetapi tidak enforce WPA3-only akan fallback ke WPA2.
  4. Attacker capture WPA2 handshake untuk dictionary attack tradisional.
- **Cara Kerja (Side-Channel Attack)**:
  1. Attacker monitor timing SAE commit/confirm frame exchange.
  2. Variasi timing mengindikasikan password candidate validity (hunting and pecking algorithm leak).
  3. Attacker bruteforce password dengan guided by timing information.
- **Langkah-langkah (Downgrade dengan Dragonslayer)**:
  1. Clone repository: `git clone https://github.com/vanhoefm/dragonslayer.git`.
  2. Install dependencies: `cd dragonslayer && sudo apt install libnl-3-dev`.
  3. Setup rogue AP dengan hostapd (disable WPA3, enable WPA2 saja): 
     ```
     interface=wlan0
     ssid=TargetSSID
     channel=6
     wpa=2
     wpa_passphrase=TestPassword123
     ```
  4. Deauth klien dari AP WPA3 legitimate: `sudo aireplay-ng -0 5 -a [AP_BSSID] wlan1mon`.
  5. Klien reconnect ke rogue AP dengan WPA2, capture handshake.
  6. Crack handshake: `sudo aircrack-ng -w wordlist.txt handshake.cap`.
- **Langkah-langkah (Side-Channel dengan Dragonblood tools)**:
  1. Setup: Clone dan compile dragonslayer tools.
  2. Jalankan timing attack: `sudo python dragonslayer/dragondrain.py -i wlan0mon`.
  3. Monitor SAE handshake timing untuk statistical analysis.
  4. Gunakan timing data untuk optimize dictionary attack.
- **Deteksi dan Mitigasi**:
  - **Patch**: Update firmware ke versi post-2019 dengan SAE fix.
  - **WPA3-only Mode**: Disable WPA2 transition mode, enforce WPA3-SAE only.
  - **Detection**: Monitor downgrade attempts atau excessive SAE commit frames.
- **Kelebihan**: Exploit WPA3 yang dianggap "unbreakable", efektif pada transition mode, side-channel powerful untuk weak password.
- **Kekurangan**: Memerlukan implementation-specific vulnerability, tidak universal untuk semua vendor, timing attack complex dan memerlukan proximity.
- **Contoh Penggunaan**: Downgrade attack pada AP WPA3 transition mode di lab untuk force WPA2 dan capture handshake untuk cracking.

## FragAttacks

- **Definisi**: Fragmentation and Aggregation Attacks adalah kumpulan kerentanan pada WiFi standard (affecting WPA, WPA2, WPA3) yang mengeksploitasi frame fragmentation dan aggregation untuk inject plaintext atau exfiltrate data.
- **Kerentanan Utama**:
  - **Fragment Cache Poisoning**: Inject fragment frame palsu untuk reassembly dengan frame legitimate, bypass encryption.
  - **Mixed Key Attack**: Exploit aggregation dengan mixed plaintext/encrypted frames untuk decrypt data.
  - **Frame Injection**: Inject plaintext frame yang muncul sebagai legitimate traffic (A-MSDU injection).
  - **Data Exfiltration**: Exfiltrate encrypted data dengan inject fragment ke client buffer.
- **CVE Terkait**: CVE-2020-24586, CVE-2020-24587, CVE-2020-24588, CVE-2020-26139 (12 vulnerabilities total).
- **Cara Kerja (A-MSDU Injection)**:
  1. Attacker berada pada jaringan WiFi yang sama dengan target (authenticated).
  2. Attacker craft A-MSDU frame dengan plaintext header tetapi dengan authenticated encryption flag.
  3. AP atau klien salah interpret frame sebagai legitimate, forward atau process.
  4. Attacker inject malicious payload (contoh: redirect DNS, ARP spoofing).
- **Cara Kerja (Fragment Cache Attack)**:
  1. Attacker inject fragment frame dengan fragment number 0 (first fragment).
  2. Fragment disimpan di receiver cache, tunggu fragment selanjutnya.
  3. Legitimate frame dengan fragment number 1 datang dari klien legitimate.
  4. Receiver reassemble fragment attacker + fragment legitimate = inject payload.
- **Dampak**:
  - **Plaintext Injection**: Inject TCP reset, DNS response palsu, malicious JavaScript.
  - **Session Hijacking**: Inject HTTP request atau response untuk session takeover.
  - **Data Leakage**: Exfiltrate encrypted data melalui side-channel dengan fragmentation timing.
- **Langkah-langkah dengan fragattack-tools**:
  1. Clone repository: `git clone https://github.com/vanhoefm/fragattacks.git`.
  2. Install dependencies: `cd fragattacks && sudo apt install python3-scapy`.
  3. Setup: Compile patched hostapd/wpa_supplicant jika diperlukan.
  4. Test A-MSDU injection: `sudo python3 fragattacks.py wlan0 --amsdu-inject`.
  5. Test mixed key attack: `sudo python3 fragattacks.py wlan0 --mixed-key`.
  6. Monitor dengan Wireshark untuk konfirmasi injection: filter `wlan.fc.type_subtype == 0x28` (QoS Data).
- **Deteksi dan Mitigasi**:
  - **Patch**: Update firmware dan driver ke versi post-May 2021.
  - **Aggregation Disable**: Nonaktifkan A-MSDU pada AP jika tidak diperlukan.
  - **Detection**: Monitor anomali fragmentation atau aggregation pattern.
- **Kelebihan**: Universal vulnerability affecting semua WiFi standards, powerful untuk injection tanpa decryption full, exploitable dari within network.
- **Kekurangan**: Memerlukan authenticated access ke network, complex exploitation, patch sudah widely available.
- **Contoh Penggunaan**: A-MSDU injection attack pada AP WPA2 di lab untuk inject DNS response palsu dan redirect traffic HTTP ke malicious server.

## Client-Side Attacks

- **Definisi**: Serangan yang menargetkan klien wireless (laptop, smartphone, IoT) daripada Access Point, mengeksploitasi misconfiguration, auto-connect behavior, atau vulnerability pada client software.
- **Jenis Serangan**:
  - **Probe Request Monitoring**: Capture probe request untuk identify SSID yang pernah diconnect klien (profiling).
  - **Preferred Network List (PNL) Exploitation**: Clone SSID dari PNL untuk auto-connect attack.
  - **Wireless Driver Exploitation**: Exploit vulnerability driver untuk code execution atau privilege escalation.
  - **Malicious Update Attack**: Inject fake update notification untuk phishing atau malware delivery.
- **Cara Kerja (PNL Exploitation)**:
  1. Klien broadcast probe request dengan SSID dari PNL (contoh: "HomeWiFi", "OfficeNetwork").
  2. Attacker capture probe request dengan Wireshark atau airodump-ng.
  3. Attacker setup rogue AP dengan SSID dari probe request.
  4. Klien auto-connect ke rogue AP tanpa user interaction.
  5. Attacker launch MITM, credential harvesting, atau malware delivery.
- **Langkah-langkah (Probe Request Sniffing)**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Capture probe requests: `sudo airodump-ng wlan0mon --output-format pcap -w probes`.
  3. Filter probe request di Wireshark: `wlan.fc.type_subtype == 0x04`.
  4. Ekstrak SSID dari probe request: klik paket → Expand "IEEE 802.11 Probe Request" → SSID.
  5. List unique SSID: `tshark -r probes-01.cap -Y "wlan.fc.type_subtype == 0x04" -T fields -e wlan.ssid | sort -u`.
- **Langkah-langkah (Rogue AP Auto-Connect)**:
  1. Identifikasi SSID dari probe request (contoh: "Starbucks WiFi").
  2. Setup rogue AP dengan hostapd:
     ```
     interface=wlan0
     ssid=Starbucks WiFi
     channel=6
     hw_mode=g
     ```
  3. Setup DHCP dan internet sharing: `sudo dnsmasq -C dnsmasq.conf`.
  4. Klien auto-connect, launch captive portal atau MITM attack.
- **Driver Exploitation (Conceptual)**:
  1. Identify vulnerable driver version pada target (contoh: Broadcom, Realtek).
  2. Craft malicious wireless frame (beacon, probe response) dengan payload exploit.
  3. Transmit frame ke klien target, trigger vulnerability untuk crash atau RCE.
  4. Deliver payload (shell, backdoor) jika RCE successful.
- **Kelebihan**: Target klien lebih vulnerable dibanding AP, auto-connect behavior exploitable, user tidak aware, dapat deliver malware directly.
- **Kekurangan**: Memerlukan proximity untuk probe request capture, modern OS memiliki random MAC dan SSID obfuscation, driver exploit rare dan complex.
- **Contoh Penggunaan**: Capture probe requests dari pengunjung café di lab, setup rogue AP "CoffeeShop_Guest" untuk auto-connect attack dan credential harvesting.

## Karma Attack

- **Definisi**: Serangan yang mengeksploitasi probe request klien dengan membuat rogue AP yang merespons semua probe request, seolah-olah AP mengenal semua SSID yang di-request klien untuk auto-connect exploitation.
- **Konsep**:
  - **Probe Request**: Klien broadcast "Apakah ada AP dengan SSID X?"
  - **Normal AP**: Hanya respond jika SSID match.
  - **Karma AP**: Respond ke semua probe request dengan "Ya, saya AP dengan SSID X" (meskipun palsu).
- **Cara Kerja**:
  1. Klien broadcast probe request: "Apakah ada 'HomeWiFi'?"
  2. Karma AP respond dengan probe response: "Ya, saya 'HomeWiFi'".
  3. Klien percaya dan connect ke Karma AP.
  4. Attacker launch MITM, DNS spoofing, atau credential harvesting.
- **Langkah-langkah dengan airbase-ng**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Jalankan Karma attack: `sudo airbase-ng -c 6 -P -C 30 -e "FakeSSID" wlan0mon`.
     - `-P`: Respond to all probe requests (Karma mode).
     - `-C 30`: Beacon interval 30ms.
     - `-e`: ESSID yang di-advertise (opsional, Karma respond ke semua).
  3. Setup DHCP untuk klien: `sudo dnsmasq -C dnsmasq.conf -d`.
  4. Enable internet sharing atau MITM: `sudo sysctl -w net.ipv4.ip_forward=1`.
  5. Monitor klien yang connect: `sudo airodump-ng --essid "FakeSSID" wlan0mon`.
- **Langkah-langkah dengan hostapd-wpe (Karma mode)**:
  1. Install hostapd-wpe: `sudo apt install hostapd-wpe`.
  2. Edit config: `sudo nano /etc/hostapd-wpe/hostapd-wpe.conf`:
     ```
     interface=wlan0
     driver=nl80211
     ssid=KarmaAP
     channel=6
     karma_enable=1
     ```
  3. Jalankan hostapd-wpe: `sudo hostapd-wpe /etc/hostapd-wpe/hostapd-wpe.conf`.
  4. Monitor kredensial WPA-Enterprise jika klien connect dengan 802.1X.
- **Deteksi dan Mitigasi**:
  - **Client-Side**: Disable auto-connect, remove unused SSID dari PNL, gunakan VPN.
  - **Detection**: Monitor multiple SSID response dari single MAC address (indicator Karma AP).
- **Kelebihan**: Exploit auto-connect behavior, no interaction required dari user, efektif untuk profiling dan MITM, dapat combine dengan Evil Twin.
- **Kekurangan**: Modern OS random MAC dan limit probe request, tidak efektif jika klien tidak broadcast probe, mudah terdeteksi dengan WIDS.
- **Contoh Penggunaan**: Setup Karma AP di lab untuk auto-connect pengunjung yang pernah connect ke "Airport_WiFi", launch captive portal phishing.

## MANA Attack

- **Definisi**: Upgraded version dari Karma Attack yang tidak hanya respond ke probe request, tetapi juga create fake AP untuk SSID populer (known SSID attack) dan loud SSID announcement untuk attract klien.
- **Perbedaan dengan Karma**:
  - **Karma**: Pasif, hanya respond ke probe request klien.
  - **MANA**: Aktif, broadcast beacon untuk SSID populer + respond ke probe request (aggressive Karma).
- **Teknik MANA**:
  - **Known SSID Beacon Flooding**: Broadcast beacon untuk SSID umum ("Free WiFi", "Guest", "Airport WiFi").
  - **Loud Announcement**: Beacon dengan signal strength tinggi untuk outpower AP legitimate.
  - **EAP Downgrade**: Force klien 802.1X untuk downgrade ke less secure authentication.
  - **Credential Harvesting**: Capture WPA-PSK atau WPA-Enterprise credentials dari auto-connect.
- **Cara Kerja**:
  1. MANA AP broadcast beacon untuk 100+ SSID populer sekaligus.
  2. Klien melihat SSID familiar di WiFi list, atau auto-connect jika di PNL.
  3. MANA AP juga respond ke semua probe request (Karma mode).
  4. Klien connect, MANA capture credentials atau launch MITM.
- **Langkah-langkah dengan hostapd-mana**:
  1. Clone repository: `git clone https://github.com/sensepost/hostapd-mana.git`.
  2. Compile: `cd hostapd-mana && make`.
  3. Edit config: `nano hostapd-mana.conf`:
     ```
     interface=wlan0
     ssid=MANA
     channel=6
     mana_wpaout=mana.hccapx
     mana_eapsuccess=1
     mana_eaptls=1
     mana_credout=mana.creds
     ```
  4. Jalankan: `sudo ./hostapd-mana hostapd-mana.conf`.
  5. Monitor credentials di file: `cat mana.creds` (format: timestamp, MAC, SSID, username, password).
- **Langkah-langkah dengan hostapd-wpe + MANA script**:
  1. Install hostapd-wpe: `sudo apt install hostapd-wpe`.
  2. Setup beacon flooding dengan airbase-ng: `sudo airbase-ng -c 6 -P -C 30 wlan0mon`.
  3. Setup hostapd-wpe untuk EAP capture.
  4. Combine dengan captive portal untuk credential phishing.
- **Advanced MANA dengan EAP Downgrade**:
  1. Configure hostapd-mana untuk support EAP-PEAP, EAP-TTLS, EAP-MD5.
  2. Force downgrade ke EAP-MD5 (weak authentication).
  3. Capture challenge-response untuk offline cracking.
- **Deteksi dan Mitigasi**:
  - **Client-Side**: Disable auto-connect, verify certificate untuk 802.1X, gunakan VPN always-on.
  - **Network-Side**: WIDS untuk detect rogue AP dengan multiple SSID, monitor beacon flood anomaly.
- **Kelebihan**: Aggressive dan efektif untuk mass credential harvesting, support WPA-Enterprise, fake beacon attract non-broadcasting clients, comprehensive MITM framework.
- **Kekurangan**: Noisy dan mudah terdeteksi, memerlukan compile dari source, dependency complex, ilegal tanpa authorization.
- **Contoh Penggunaan**: Deploy MANA attack di lab dengan 200 SSID populer (Starbucks, Airport, Hotel) untuk test awareness karyawan dan harvest WPA-Enterprise credentials dari auto-connect devices.
