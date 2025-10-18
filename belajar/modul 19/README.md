# Modul 19: Man-in-the-Middle (MITM)

## ARP Spoofing di Wireless

- **Definisi**: Teknik Man-in-the-Middle yang memanipulasi ARP (Address Resolution Protocol) table untuk mengalihkan traffic antara korban dan gateway, memposisikan attacker sebagai proxy transparan di jaringan wireless.
- **Konsep ARP**:
  - **ARP Table**: Pemetaan IP address ke MAC address di layer 2, digunakan device untuk komunikasi dalam LAN.
  - **ARP Request/Reply**: Broadcast untuk mencari MAC address dari IP tertentu, reply berisi MAC address yang diklaim.
  - **ARP Cache Poisoning**: Mengirim ARP reply palsu untuk mengasosiasikan IP gateway dengan MAC attacker.
- **Cara Kerja**:
  1. Attacker terhubung ke jaringan wireless yang sama dengan korban.
  2. Kirim ARP reply palsu ke korban: "IP gateway ada di MAC attacker".
  3. Kirim ARP reply palsu ke gateway: "IP korban ada di MAC attacker".
  4. Traffic korban ↔ gateway melewati attacker, attacker forward untuk transparansi.
- **Langkah-langkah dengan arpspoof**:
  1. Enable IP forwarding: `sudo sysctl -w net.ipv4.ip_forward=1`.
  2. Identifikasi target dan gateway: `sudo nmap -sn 192.168.1.0/24`.
  3. Jalankan ARP spoofing ke korban: `sudo arpspoof -i wlan0 -t 192.168.1.10 192.168.1.1`.
     - `-t [TARGET_IP] [GATEWAY_IP]`: Poison target dengan gateway palsu.
  4. Jalankan ARP spoofing ke gateway (terminal kedua): `sudo arpspoof -i wlan0 -t 192.168.1.1 192.168.1.10`.
  5. Capture traffic dengan tcpdump atau Wireshark: `sudo tcpdump -i wlan0 -w mitm.pcap`.
- **Kelebihan**: Transparan untuk korban, efektif di jaringan wireless tanpa isolasi klien, dapat capture semua traffic layer 3-7.
- **Kekurangan**: Mudah terdeteksi oleh ARP monitoring tools, tidak efektif pada jaringan dengan static ARP atau ARP inspection.
- **Contoh Penggunaan**: ARP spoofing antara laptop korban dan router wireless di lab untuk intercept HTTP traffic.

## Traffic Interception

- **Definisi**: Proses menangkap dan menganalisis traffic jaringan yang melewati attacker setelah berhasil melakukan MITM, untuk ekstraksi data sensitif atau monitoring aktivitas korban.
- **Jenis Traffic yang Dapat Diintercept**:
  - **HTTP**: Request/response, form data, cookies (plaintext).
  - **FTP**: Username, password, file transfer (plaintext).
  - **SMTP/POP3/IMAP**: Email credentials dan content (jika tidak menggunakan TLS).
  - **DNS**: Query domain yang dikunjungi korban.
  - **HTTPS/TLS**: Encrypted, memerlukan SSL stripping atau certificate manipulation.
- **Langkah-langkah dengan tcpdump**:
  1. Setup MITM (ARP spoofing atau Evil Twin).
  2. Capture traffic: `sudo tcpdump -i wlan0 -w traffic.pcap`.
     - Filter spesifik: `sudo tcpdump -i wlan0 'tcp port 80 or tcp port 21' -w http_ftp.pcap`.
  3. Analisis dengan Wireshark: `wireshark traffic.pcap`.
  4. Filter kredensial: `http.request.method == "POST"` atau `ftp` di Wireshark.
  5. Follow TCP stream untuk melihat data lengkap: klik kanan paket → Follow → TCP Stream.
- **Langkah-langkah dengan ngrep**:
  1. Setup MITM.
  2. Grep pattern spesifik: `sudo ngrep -d wlan0 -q -i "password" 'tcp port 80'`.
     - `-q`: Quiet mode, `-i`: Case insensitive, pattern untuk pencarian.
  3. Monitor real-time untuk keyword (username, password, session).
- **Kelebihan**: Dapat capture semua traffic plaintext, real-time monitoring, evidence untuk forensic.
- **Kekurangan**: Tidak efektif untuk encrypted traffic tanpa decryption, menghasilkan data besar memerlukan storage dan analisis.
- **Contoh Penggunaan**: Intercept HTTP POST request untuk login form dari korban di lab, ekstraksi username dan password.

## Session Hijacking

- **Definisi**: Teknik mencuri session token atau cookie dari korban melalui MITM untuk mengambil alih sesi autentikasi tanpa memerlukan username dan password.
- **Target**: Session cookies (PHPSESSID, JSESSIONID, auth_token), OAuth tokens, JWT (JSON Web Token).
- **Cara Kerja**:
  1. Korban login ke aplikasi web, server memberikan session cookie.
  2. Attacker intercept traffic dan ekstrak session cookie dari HTTP header.
  3. Attacker inject cookie ke browser sendiri (edit cookie atau gunakan browser extension).
  4. Attacker akses aplikasi dengan session yang sama, bypass autentikasi.
- **Langkah-langkah Manual**:
  1. Setup MITM dan intercept traffic HTTP.
  2. Filter cookie di Wireshark: `http.cookie contains "PHPSESSID"`.
  3. Copy nilai cookie (contoh: `PHPSESSID=abc123xyz`).
  4. Inject cookie di browser attacker:
     - Chrome/Firefox: F12 → Console → `document.cookie="PHPSESSID=abc123xyz"`.
     - Extension: EditThisCookie, Cookie Editor.
  5. Refresh halaman, attacker masuk sebagai korban tanpa login.
- **Langkah-langkah dengan Hamster & Ferret**:
  1. Setup MITM dan enable IP forwarding.
  2. Capture traffic dengan Ferret: `sudo ferret -i wlan0`.
  3. Jalankan Hamster proxy: `hamster` (default port 1234).
  4. Buka browser attacker, set proxy ke `127.0.0.1:1234`.
  5. Hamster menampilkan session aktif, klik untuk hijack session korban.
- **Kelebihan**: Bypass autentikasi tanpa cracking password, efektif untuk session-based authentication, cepat dan sederhana.
- **Kekurangan**: Session expired setelah timeout atau logout, tidak efektif untuk session dengan IP binding atau device fingerprinting.
- **Contoh Penggunaan**: Hijack session Facebook korban di lab dengan mengekstrak cookie `c_user` dan `xs` dari HTTP traffic.

## SSL/TLS Stripping

- **Definisi**: Teknik MITM yang downgrade koneksi HTTPS korban ke HTTP dengan menjadi proxy transparan, memungkinkan attacker membaca traffic encrypted tanpa certificate warning.
- **Cara Kerja**:
  1. Korban request halaman HTTP (contoh: `http://example.com`).
  2. Server redirect ke HTTPS (contoh: `https://example.com`), tetapi attacker intercept.
  3. Attacker forward request ke server sebagai HTTPS (attacker ↔ server encrypted).
  4. Attacker kirim response ke korban sebagai HTTP (korban ↔ attacker plaintext).
  5. Korban melihat `http://` di browser, tidak sadar koneksi tidak aman.
- **Langkah-langkah dengan sslstrip**:
  1. Setup MITM (ARP spoofing): `sudo arpspoof -i wlan0 -t [TARGET_IP] [GATEWAY_IP]`.
  2. Enable IP forwarding: `sudo sysctl -w net.ipv4.ip_forward=1`.
  3. Redirect traffic HTTP ke sslstrip port: `sudo iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 8080`.
  4. Jalankan sslstrip: `sudo sslstrip -l 8080 -w sslstrip.log`.
  5. Monitor log real-time: `tail -f sslstrip.log` (kredensial dan POST data tersimpan).
  6. Analisis log untuk kredensial: `cat sslstrip.log | grep -i "password"`.
- **Langkah-langkah dengan mitmproxy**:
  1. Setup MITM dan IP forwarding.
  2. Redirect traffic ke mitmproxy: `sudo iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 8080`.
  3. Jalankan mitmproxy: `mitmproxy --mode transparent --showhost`.
  4. Monitor traffic real-time di interface mitmproxy (tekan Enter untuk detail request).
  5. Simpan traffic: `mitmproxy -w mitm.flow` untuk analisis offline.
- **Kelebihan**: Transparan untuk korban tanpa certificate warning, efektif untuk banyak situs yang masih support HTTP.
- **Kekurangan**: Tidak efektif untuk HSTS (HTTP Strict Transport Security) enabled sites, modern browser semakin banyak HTTPS-only mode.
- **Contoh Penggunaan**: Downgrade HTTPS login page ke HTTP di lab untuk capture credentials dari korban yang browsing social media.

## Ettercap dan Bettercap

- **Definisi**: Framework MITM yang mengintegrasikan berbagai teknik (ARP spoofing, DNS spoofing, sniffing, packet manipulation) dalam satu tool dengan GUI atau CLI.
- **Ettercap**:
  - **Fitur**: ARP poisoning, DNS spoofing, password collection, packet filtering/dropping, plugin support.
  - **Mode**: Text, CLI, GUI (GTK).
  - **Langkah-langkah (GUI)**:
    1. Jalankan Ettercap GUI: `sudo ettercap -G`.
    2. Pilih interface: Sniff → Unified sniffing → `wlan0`.
    3. Scan hosts: Hosts → Scan for hosts.
    4. Tambahkan target: Hosts → Hosts list → Pilih korban → Add to Target 1, pilih gateway → Add to Target 2.
    5. Aktifkan MITM: Mitm → ARP poisoning → Sniff remote connections.
    6. Start sniffing: Start → Start sniffing.
    7. Monitor kredensial di tab "User/Pass" atau View → Connections.
  - **Langkah-langkah (CLI)**:
    1. Jalankan Ettercap text mode: `sudo ettercap -T -i wlan0 -M arp:remote /[TARGET_IP]// /[GATEWAY_IP]//`.
       - `-T`: Text mode, `-M arp:remote`: ARP poisoning mode, `//`: Poison semua port.
    2. Monitor output untuk kredensial dan traffic.
  - **Plugin**: `dns_spoof`, `remote_browser`, `dos_attack` (aktifkan dengan `--plugin [PLUGIN_NAME]`).
  - **Kelebihan**: User-friendly GUI, banyak fitur built-in, packet filtering dengan etterfilter, plugin extensible.
  - **Kekurangan**: Performance lambat pada jaringan besar, development kurang aktif, GUI terkadang crash.
- **Bettercap**:
  - **Fitur**: ARP/DNS/DHCPv6 spoofing, SSL stripping, credential harvesting, scripting dengan caplets, web UI.
  - **Langkah-langkah (CLI)**:
    1. Jalankan Bettercap: `sudo bettercap -iface wlan0`.
    2. Aktifkan ARP spoofing:
       ```
       set arp.spoof.targets [TARGET_IP]
       arp.spoof on
       ```
    3. Enable sniffer: `net.sniff on`.
    4. Enable kredensial harvesting: `net.sniff.verbose true` (tampilkan kredensial real-time).
    5. SSL stripping (opsional): `set https.proxy.sslstrip true`, lalu `https.proxy on`.
    6. Monitor kredensial di output atau web UI.
  - **Langkah-langkah (Web UI)**:
    1. Jalankan web UI: `sudo bettercap -iface wlan0 -caplet http-ui`.
    2. Akses UI: `http://127.0.0.1:80` (default user: `admin`, pass: `pass`).
    3. Pilih target di UI, aktifkan modules (arp.spoof, net.sniff, https.proxy).
    4. Monitor traffic dan events di dashboard.
  - **Caplets**: Script automation untuk attack chains (contoh: `hstshijack.cap` untuk bypass HSTS).
  - **Kelebihan**: Modern dan actively maintained, powerful scripting, web UI intuitif, performance cepat.
  - **Kekurangan**: Learning curve untuk caplets, memerlukan Go runtime untuk build dari source.
- **Contoh Penggunaan**: 
  - Ettercap: MITM attack di lab pada jaringan wireless office untuk sniff HTTP/FTP credentials dengan GUI.
  - Bettercap: Automated SSL stripping attack dengan caplet untuk capture login credentials dari multiple targets di lab.

## Wireshark untuk MITM Analysis

- **Definisi**: Network protocol analyzer untuk capture dan analisis mendalam traffic hasil MITM, identifikasi kredensial, session tokens, dan pola komunikasi korban.
- **Fitur untuk MITM Analysis**:
  - **Display Filters**: Menyaring paket berdasarkan protokol, IP, port (contoh: `http`, `tcp.port == 80`, `ip.addr == 192.168.1.10`).
  - **Follow Stream**: Melihat percakapan lengkap TCP/HTTP/TLS dalam format readable.
  - **Expert Info**: Identifikasi anomali, error, warning dalam traffic.
  - **Credentials Extraction**: Filter untuk protokol plaintext authentication.
  - **Statistics**: Analisis conversation, endpoint, protocol hierarchy untuk profiling target.
- **Langkah-langkah Capture**:
  1. Setup MITM (ARP spoofing atau Evil Twin).
  2. Start capture di Wireshark: Capture → Pilih interface `wlan0` → Start.
     - Atau via CLI: `sudo wireshark -i wlan0 -k`.
  3. Filter traffic real-time dengan display filter (toolbar atas).
  4. Stop capture setelah sufficient data: Capture → Stop.
  5. Save capture: File → Save As → `mitm_analysis.pcapng`.
- **Filter untuk Kredensial**:
  - **HTTP POST**: `http.request.method == "POST"` (form submissions, login).
  - **HTTP Cookies**: `http.cookie` atau `http.set_cookie`.
  - **FTP**: `ftp` (username dan password di FTP-DATA).
  - **Telnet**: `telnet` (plaintext command dan credentials).
  - **SMTP Auth**: `smtp.auth` (email login).
  - **POP3/IMAP**: `pop.request.command == "USER"` atau `pop.request.command == "PASS"`.
  - **Basic Auth**: `http.authbasic` (base64 encoded username:password).
- **Langkah-langkah Analisis**:
  1. Buka capture file: File → Open → `mitm_analysis.pcapng`.
  2. Filter HTTP POST: `http.request.method == "POST"`.
  3. Pilih paket, klik kanan → Follow → HTTP Stream.
  4. Cari form data di bagian request body (contoh: `username=admin&password=secret123`).
  5. Export objek HTTP: File → Export Objects → HTTP (download file yang di-request korban).
  6. Ekstrak cookies: Filter `http.cookie`, klik paket → Expand "Hypertext Transfer Protocol" → Copy cookie value.
- **Langkah-langkah Decrypt HTTPS (jika ada SSL key)**:
  1. Setup: Edit → Preferences → Protocols → TLS.
  2. Tambahkan key log file: (Pre)-Master-Secret log filename → Browse ke `sslkeylog.txt`.
  3. Generate key log: Set environment variable `SSLKEYLOGFILE=/path/to/sslkeylog.txt` pada browser korban (untuk testing lab).
  4. Wireshark otomatis decrypt TLS jika memiliki master secret.
- **Statistics untuk Profiling**:
  - **Conversations**: Statistics → Conversations (lihat traffic terbanyak ke IP mana).
  - **Protocol Hierarchy**: Statistics → Protocol Hierarchy (protokol yang digunakan korban).
  - **HTTP Requests**: Statistics → HTTP → Requests (domain/URL yang dikunjungi).
- **Kelebihan**: Powerful filtering dan analisis, support ratusan protokol, export dan reporting, cross-platform.
- **Kekurangan**: Overwhelming untuk pemula, memerlukan understanding protokol networking, tidak bisa decrypt HTTPS tanpa key.
- **Contoh Penggunaan**: Analisis capture file MITM attack di lab untuk identifikasi username/password dari HTTP POST dan ekstraksi session cookies dari HTTP traffic.
