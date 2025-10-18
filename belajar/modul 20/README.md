# Modul 20: Denial of Service (DoS)

## Deauthentication/Disassociation Flood

- **Definisi**: Serangan DoS yang mengirimkan paket deauthentication atau disassociation palsu ke klien atau Access Point untuk memutuskan koneksi wireless secara paksa dan berulang kali.
- **Perbedaan**:
  - **Deauthentication**: Management frame yang memberitahu klien untuk disconnect dari AP, seolah-olah dikirim dari AP (spoofed).
  - **Disassociation**: Management frame yang memutus asosiasi antara klien dan AP, mirip dengan deauth tetapi pada layer berbeda.
- **Cara Kerja**:
  1. Attacker mengirim deauth frame dengan source MAC address AP target ke broadcast atau klien spesifik.
  2. Klien menerima deauth frame legitimate (karena management frame tidak terenkripsi di WPA2).
  3. Klien disconnect dan mencoba reconnect, tetapi attacker terus mengirim deauth flood.
  4. AP atau klien tidak dapat maintain koneksi stabil, menyebabkan DoS.
- **Langkah-langkah dengan aireplay-ng**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Identifikasi target AP: `sudo airodump-ng wlan0mon` (catat BSSID dan Channel).
  3. Deauth semua klien: `sudo aireplay-ng -0 0 -a [AP_BSSID] wlan0mon`.
     - `-0 0`: Deauth flood (0 = unlimited), `-a`: Target AP BSSID.
  4. Deauth klien spesifik: `sudo aireplay-ng -0 0 -a [AP_BSSID] -c [CLIENT_MAC] wlan0mon`.
     - `-c`: Target client MAC address.
  5. Disassociation flood: `sudo aireplay-ng -0 0 -a [AP_BSSID] --deauth wlan0mon` (gunakan flag `--deauth` untuk disassociation).
- **Langkah-langkah dengan mdk4**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Deauth attack: `sudo mdk4 wlan0mon d -c [CHANNEL] -b [AP_BSSID]`.
     - `d`: Deauthentication mode, `-c`: Channel target, `-b`: Blacklist AP BSSID.
  3. Deauth semua AP di channel: `sudo mdk4 wlan0mon d -c [CHANNEL]`.
- **Kelebihan**: Sangat efektif untuk DoS wireless, sederhana dan cepat, dapat target spesifik atau broadcast, memaksa handshake capture.
- **Kekurangan**: Mudah terdeteksi oleh WIDS/WIPS, tidak efektif pada WPA3 (management frame protection), ilegal di banyak negara.
- **Contoh Penggunaan**: Deauth flood ke AP "TestLab" di lab untuk simulasi DoS dan testing resilience jaringan wireless.

## Beacon Flooding

- **Definisi**: Serangan DoS yang membanjiri spektrum wireless dengan beacon frame palsu dari ratusan atau ribuan fake Access Point untuk overload wireless scanner dan menyembunyikan AP legitimate.
- **Cara Kerja**:
  1. Attacker mengirim beacon frame dengan SSID random atau customized secara massal.
  2. Scanner wireless (contoh: smartphone WiFi list) dibanjiri dengan fake AP.
  3. AP legitimate tersembunyi di antara noise, menyulitkan klien untuk connect.
  4. Device dengan auto-connect feature mencoba connect ke fake AP, menghabiskan resource.
- **Langkah-langkah dengan mdk4**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Beacon flood dengan SSID random: `sudo mdk4 wlan0mon b -c [CHANNEL]`.
     - `b`: Beacon flood mode, `-c`: Target channel.
  3. Beacon flood dengan SSID dari file: `sudo mdk4 wlan0mon b -c [CHANNEL] -f ssid_list.txt`.
     - `-f`: File berisi list SSID (satu SSID per line).
  4. Beacon flood mode full spectrum: `sudo mdk4 wlan0mon b` (tanpa `-c`, flood semua channel).
- **Langkah-langkah dengan mdk3**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Beacon flood: `sudo mdk3 wlan0mon b -c [CHANNEL] -s 500`.
     - `b`: Beacon flood mode, `-s 500`: Speed 500 beacon/second.
  3. Custom SSID: `sudo mdk3 wlan0mon b -f ssid_list.txt -c [CHANNEL]`.
- **Langkah-langkah dengan airbase-ng**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Beacon flood: `sudo airbase-ng -c [CHANNEL] -e "FakeAP" wlan0mon`.
     - `-e`: SSID name, ulangi command dengan SSID berbeda di multiple terminal.
  3. Automated dengan script: Loop airbase-ng dengan SSID random.
- **Kelebihan**: Sangat mengganggu scanner wireless, menyembunyikan AP target, psikologis (overwhelm user), sulit di-filter.
- **Kekurangan**: Tidak memutus koneksi existing, hanya mengganggu discovery, mudah terdeteksi oleh spectrum analyzer, drain battery adapter.
- **Contoh Penggunaan**: Beacon flood 1000 fake AP di channel 6 untuk test kemampuan WIDS detection di lab environment.

## Authentication Flood

- **Definisi**: Serangan DoS yang membanjiri Access Point dengan authentication request palsu untuk menghabiskan resource AP (memory, CPU) dan mencegah klien legitimate untuk autentikasi.
- **Cara Kerja**:
  1. Attacker mengirim authentication frame dengan source MAC random atau spoofed ke target AP.
  2. AP memproses setiap authentication request, alokasikan resource untuk setiap "klien".
  3. AP kehabisan resource (connection table full, CPU overload).
  4. Klien legitimate tidak dapat authenticate atau disconnect karena AP tidak responsive.
- **Langkah-langkah dengan mdk4**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Authentication flood: `sudo mdk4 wlan0mon a -a [AP_BSSID] -m`.
     - `a`: Authentication DoS mode, `-a`: Target AP BSSID, `-m`: Use valid client MAC addresses.
  3. Full speed authentication: `sudo mdk4 wlan0mon a -a [AP_BSSID] -s 1000`.
     - `-s 1000`: Speed 1000 auth frame/second.
- **Langkah-langkah dengan mdk3**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Authentication flood: `sudo mdk3 wlan0mon a -a [AP_BSSID] -s 500`.
     - `a`: Authentication DoS mode, `-s 500`: Speed 500 frame/second.
- **Langkah-langkah dengan aireplay-ng**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Fake authentication flood: `sudo aireplay-ng -1 0 -e [SSID] -a [AP_BSSID] -h [FAKE_MAC] wlan0mon`.
     - `-1 0`: Fake auth attack (0 = keep alive interval 0, spam mode).
  3. Loop dengan script untuk multiple MAC addresses.
- **Kelebihan**: Efektif untuk crash AP dengan memory terbatas, sulit di-block tanpa MAC filtering advanced, dapat kombinasi dengan deauth.
- **Kekurangan**: AP modern dengan rate limiting tidak terlalu affected, memerlukan transmission power tinggi, mudah terdeteksi.
- **Contoh Penggunaan**: Authentication flood ke router consumer-grade di lab untuk test DoS resistance dan triggering resource exhaustion.

## TKIP MIC Exploitation

- **Definisi**: Eksploitasi kelemahan TKIP (Temporal Key Integrity Protocol) dengan mengirim paket invalid untuk trigger MIC (Message Integrity Check) failure, menyebabkan AP shutdown wireless untuk 60 detik sebagai countermeasure.
- **TKIP MIC Countermeasure**:
  - **MIC Failure**: Jika AP mendeteksi 2 MIC failure dalam 60 detik, AP menonaktifkan wireless untuk 60 detik.
  - **Tujuan**: Proteksi terhadap injection attack, tetapi dapat disalahgunakan untuk DoS.
- **Cara Kerja**:
  1. Attacker mengirim paket dengan MIC invalid ke AP (inject atau replay modified packet).
  2. AP mendeteksi MIC failure pertama.
  3. Attacker kirim MIC failure kedua dalam 60 detik.
  4. AP trigger TKIP countermeasure, shutdown wireless untuk 60 detik.
  5. Semua klien disconnect, tidak dapat reconnect hingga countermeasure selesai.
- **Langkah-langkah dengan tkiptun-ng**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Capture handshake target: `sudo airodump-ng -c [CHANNEL] --bssid [AP_BSSID] -w tkip wlan0mon`.
  3. Deauth untuk force handshake: `sudo aireplay-ng -0 5 -a [AP_BSSID] wlan0mon`.
  4. Jalankan tkiptun-ng untuk exploit MIC: `sudo tkiptun-ng -a [AP_BSSID] -h [CLIENT_MAC] wlan0mon`.
     - Tkiptun inject paket TKIP invalid untuk trigger MIC failure.
  5. AP shutdown wireless setelah 2 MIC failures.
- **Langkah-langkah dengan mdk4**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. TKIP MIC exploit: `sudo mdk4 wlan0mon m -t [AP_BSSID] -j`.
     - `m`: Michael shutdown exploitation (TKIP MIC), `-t`: Target BSSID, `-j`: Use intelligent jamming.
- **Kelebihan**: Efektif untuk AP dengan TKIP enabled, DoS 60 detik otomatis, tidak memerlukan deauth berkelanjutan.
- **Kekurangan**: Hanya bekerja pada WPA-TKIP (jarang digunakan), tidak efektif pada WPA2-AES atau WPA3, memerlukan capture handshake.
- **Contoh Penggunaan**: Exploit TKIP MIC pada AP legacy dengan WPA-TKIP di lab untuk trigger countermeasure dan test DoS impact.

## Channel Jamming

- **Definisi**: Serangan DoS physical layer yang membanjiri wireless channel dengan noise atau paket acak untuk mengganggu sinyal legitimate dan membuat komunikasi wireless tidak mungkin.
- **Jenis Jamming**:
  - **Constant Jamming**: Transmit signal terus-menerus pada frequency target untuk overpower sinyal AP.
  - **Random Jamming**: Transmit random packet atau noise pada interval random.
  - **Reactive Jamming**: Detect transmisi wireless, lalu transmit jamming signal untuk interfere.
  - **Deceptive Jamming**: Transmit frame legitimate-looking tetapi invalid untuk confuse receiver.
- **Cara Kerja**:
  1. Attacker transmit high-power signal atau packet flood pada channel target (contoh: channel 6, 2.437 GHz).
  2. Signal-to-noise ratio (SNR) menurun drastis karena interference.
  3. AP dan klien tidak dapat decode frame karena corruption atau collision.
  4. Wireless communication terputus atau throughput drop drastis.
- **Langkah-langkah dengan mdk4**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Channel jamming: `sudo mdk4 wlan0mon c -c [CHANNEL]`.
     - `c`: Channel jamming mode, `-c`: Target channel.
  3. Full spectrum jamming: `sudo mdk4 wlan0mon c` (tanpa `-c`, jam semua channel 2.4GHz).
- **Langkah-langkah dengan mdk3**:
  1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
  2. Jamming dengan paket random: `sudo mdk3 wlan0mon p -c [CHANNEL]`.
     - `p`: SSID probing and bruteforcing (generate noise pada channel).
- **Langkah-langkah dengan SDR (Software Defined Radio)**:
  1. Setup SDR (contoh: HackRF, USRP) dengan GNU Radio atau software jamming.
  2. Set frequency ke target channel (contoh: 2.437 GHz untuk channel 6).
  3. Transmit continuous wave atau modulated noise.
  4. Adjust power untuk coverage area yang diinginkan.
- **Kelebihan**: Sangat efektif untuk DoS total, sulit di-mitigate tanpa physical access, affect semua device di area.
- **Kekurangan**: Ilegal dan detectable oleh spectrum analyzer atau RF monitoring, memerlukan hardware high-power, affected oleh regulasi FCC/ETSI.
- **Contoh Penggunaan**: Channel jamming pada channel 11 di lab dengan mdk4 untuk simulasi interference attack dan test frequency hopping resilience.

## MDK3/MDK4 untuk DoS

- **Definisi**: Suite tools untuk wireless Denial of Service attacks yang mengimplementasikan berbagai teknik DoS (beacon flood, deauth, authentication flood, TKIP exploit) dalam satu framework.
- **MDK3**:
  - **Platform**: Legacy tool untuk wireless DoS, banyak digunakan di Kali Linux lama.
  - **Mode Serangan**:
    - `b`: Beacon flooding.
    - `a`: Authentication DoS.
    - `p`: SSID probing dan bruteforcing (generate traffic noise).
    - `d`: Deauthentication/Disassociation attack.
    - `m`: Michael shutdown exploitation (TKIP MIC).
  - **Langkah-langkah Umum**:
    1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
    2. Jalankan MDK3 dengan mode: `sudo mdk3 wlan0mon [MODE] [OPTIONS]`.
    3. Contoh beacon flood: `sudo mdk3 wlan0mon b -c 6 -s 1000`.
       - `b`: Beacon mode, `-c 6`: Channel 6, `-s 1000`: 1000 beacon/second.
    4. Contoh deauth: `sudo mdk3 wlan0mon d -c 6 -b [AP_BSSID]`.
       - `d`: Deauth mode, `-b`: Blacklist target AP.
- **MDK4**:
  - **Platform**: Successor MDK3, actively maintained, lebih stabil dan feature-rich.
  - **Mode Serangan**:
    - `b`: Beacon flooding (dengan mode advanced: `-w n` untuk WPA, `-w o` untuk Open).
    - `a`: Authentication DoS (dengan `-m` untuk valid MAC, `-s` untuk speed control).
    - `d`: Deauthentication/Disassociation (dengan `-c` untuk client, `-E` untuk ESSID filtering).
    - `m`: Michael shutdown exploitation (TKIP MIC dengan `-t` target, `-j` jamming).
    - `p`: SSID probing (brute force hidden SSID atau probe request flood).
    - `e`: EAPOL start/logoff packet injection (DoS untuk 802.1X authentication).
  - **Langkah-langkah dengan MDK4**:
    1. Aktifkan monitor mode: `sudo airmon-ng start wlan0`.
    2. List mode available: `sudo mdk4 wlan0mon` (tanpa parameter, tampilkan help).
    3. Beacon flood advanced: `sudo mdk4 wlan0mon b -c 1,6,11 -w n -s 500`.
       - `-c 1,6,11`: Multiple channels, `-w n`: WPA/WPA2 beacons, `-s 500`: Speed.
    4. Deauth dengan ESSID filter: `sudo mdk4 wlan0mon d -c 6 -E "TargetSSID"`.
       - `-E`: Target specific ESSID, deauth hanya AP dengan SSID ini.
    5. Authentication flood intelligent: `sudo mdk4 wlan0mon a -a [AP_BSSID] -m -s 1000`.
       - `-m`: Menggunakan valid client MAC addresses untuk bypass MAC filtering.
    6. EAPOL attack: `sudo mdk4 wlan0mon e -t [AP_BSSID] -s [CLIENT_MAC]`.
       - `e`: EAPOL mode, `-t`: Target AP, `-s`: Source client MAC.
  - **Options Tambahan**:
    - `-h [MAC]`: Spoof source MAC address.
    - `-v [FILE]`: Verbose, save output ke file.
    - `-n`: Use interface untuk packet injection.
- **Kombinasi Attack dengan MDK4**:
  1. Terminal 1 - Beacon flood: `sudo mdk4 wlan0mon b -c 6 -s 1000`.
  2. Terminal 2 - Deauth flood: `sudo mdk4 wlan0mon d -c 6 -B [AP_BSSID]`.
     - `-B`: Blacklist file berisi target BSSID (satu per line).
  3. Terminal 3 - Authentication flood: `sudo mdk4 wlan0mon a -a [AP_BSSID] -s 500`.
- **Kelebihan**: 
  - MDK3: Simple, lightweight, banyak tutorial dan community support.
  - MDK4: Actively maintained, lebih stabil, advanced options (ESSID filtering, intelligent jamming), multi-channel support.
- **Kekurangan**: 
  - MDK3: Development stopped, bugs tidak di-fix, limited features.
  - MDK4: Learning curve untuk advanced options, dokumentasi kurang lengkap.
- **Contoh Penggunaan**: 
  - MDK3: Deauth attack sederhana ke AP "GuestWiFi" di lab untuk disconnect semua klien.
  - MDK4: Kombinasi beacon flood (1000 fake AP) dan deauth flood ke multiple target AP di lab untuk stress test WIDS detection capability.
