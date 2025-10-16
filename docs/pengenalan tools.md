# Pengenalan Tools

## Aircrack-NG suite

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/aircrack-ng.png" width="50%" />
</div>

[Aircrack-NG suite](https://github.com/aircrack-ng/aircrack-ng) adalah sekumpulan alat pengujian keamanan Wi-Fi yang digunakan untuk **memantau**, **menyerang**, dan **menganalisis jaringan nirkabel berbasis protokol 802.11**. Fitur utamanya meliputi **penangkapan paket (`Airodump-NG`)**, **serangan deauth (`Aireplay-NG`)**, **pemecahan kunci WEP/WPA/WPA2-PSK (`Aircrack-NG`)**, dan **pembuatan basis data Access Point serta client (Airolib-NG)**. Semua alat ini berjalan di `Linux`, `Windows`, dan `macOS`, namun memerlukan adapter Wi-Fi yang mendukung mode monitor dan packet injection. `Aircrack-NG suite` sering digunakan dalam pengujian penetrasi untuk mengevaluasi kerentanan jaringan Wi-Fi.

## Airgorah


<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/airgorah.png" width="50%" />
</div>

[Airgorah](https://github.com/martin-olivier/airgorah) adalah alat **untuk pengujian keamanan Wi-Fi berbasis `Aircrack-ng suite`**, yang mendukung **penangkapan lalu lintas Wi-Fi terdekat**, **penemuan client yang terhubung ke Access Point**, **serangan deauth**, **penangkapan handshake**, serta **pemecahan kata sandi Access Point**. Ditulis dalam `Rust` dengan antarmuka grafis `GTK4`, alat ini hanya berfungsi di `Linux` dengan hak akses `root` dan adapter Wi-Fi yang mendukung mode monitor serta packet injection. `Airgorah` sering digunakan dalam pengujian penetrasi untuk mengevaluasi kerentanan jaringan nirkabel.

## Bettercap

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/bettercap.png" width="50%" />
</div>

[Bettercap](https://github.com/bettercap/bettercap) adalah alat serbaguna untuk **serangan Man-in-the-Middle (MITM)** dan **manipulasi lalu lintas jaringan**, mendukung fitur seperti **ARP/DNS spoofing**, **manipulasi stream HTTP/HTTPS/TCP**, **sniffing kredensial**, serta **pengujian pada Wi-Fi**, **Bluetooth Low Energy (BLE)**, **HID**, dan **CAN**. Alat ini sering digunakan dalam pengujian penetrasi untuk mengamati dan memanipulasi lalu lintas di lapisan IP/TCP, di samping serangan berbasis Wi-Fi.

## Cowpatty

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/cowpatty.png" width="50%" />
</div>

[Cowpatty](https://github.com/joswr1ght/cowpatty) adalah alat untuk **melakukan serangan dictionary offline terhadap jaringan WPA/WPA2-PSK dengan menangkap empat-way handshake EAPOL**. Alat ini dikembangkan oleh [Joshua Wright](https://www.sans.org/profiles/joshua-wright) dan mendukung penggunaan tabel pelangi (rainbow tables) untuk mempercepat pemulihan passphrase PMK. `Cowpatty` sering digunakan dalam pengujian penetrasi Wi-Fi untuk mengidentifikasi passphrase lemah, biasanya dikombinasikan dengan alat seperti `Airodump-NG` dan `GenPMK`. 

## MDK3

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/mdk3.png" width="50%" />
</div>

[MDK3](https://github.com/charlesxsh/mdk3-master) adalah alat proof-of-concept (POC) untuk **pengujian stres dan eksploitasi kelemahan protokol 802.11**, seperti **beacon flooding**, **deauthentication**, dan **probe flooding**. Alat ini sering digunakan untuk simulasi serangan DoS atau pengujian penetrasi pada jaringan Wi-Fi.

## MDK4

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/missing.png" width="50%" />
</div>

[MDK4](https://github.com/aircrack-ng/mdk4) adalah versi lanjutan dari `MDK3` dengan mode serangan yang lebih beragam, peningkatan kompatibilitas, dan fitur tambahan. Alat ini digunakan untuk **menguji implementasi protokol 802.11 melalui serangan seperti beacon flooding**, **deauthentication**, **probe flooding**, dan **berbagai mode Proof of Concept (PoC) lainnya**.

## PixieWPS

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/pixiewps.png" width="50%" />
</div>

[PixieWPS](https://github.com/wiire-a/pixiewps) adalah alat untuk **melakukan serangan Pixie-Dust (brute-force offline) pada implementasi WPS yang rentan**, dengan mengeksploitasi nonce atau entropy rendah untuk mendapatkan PIN WPS secara cepat tanpa brute-force online yang lama. Alat ini sering digunakan bersama `Reaver` atau `Wash`, atau diintegrasikan dalam alur kerja pengujian WPS.

## Reaver

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/reaver.png" width="50%" />
</div>

[Reaver](https://github.com/t6x/reaver-wps-fork-t6x) adalah alat untuk **melakukan serangan brute-force pada PIN WPS secara online guna mendapatkan kunci WPA/WPA2-PSK**. `Reaver` juga mendukung mode eksploitasi Pixie-Dust dengan flag khusus. Alat ini efektif digunakan pada target yang masih mengaktifkan WPS, meskipun banyak access point (AP) modern telah menerapkan mitigasi atau fitur lockout.

## Wifite

<div align="center">
  <img src="https://github.com/fixploit03/Pentest-WiFi/blob/main/docs/img/wifite.png" width="50%" />
</div>

[Wifite](https://github.com/derv82/wifite2) adalah alat otomatisasi untuk pengujian penetrasi (pentest) Wi-Fi yang mengintegrasikan berbagai alat ke dalam satu proses otomatis. Alat ini menggabungkan fungsi dari perangkat seperti `Aircrack-NG suite`, `Reaver`, `PixieWPS`, dan lainnya untuk **menangkap handshake**, **melakukan serangan WPS**, dan **cracking**. `Wifite` dirancang untuk mempercepat alur kerja audit otomatis pada banyak target. Cocok untuk laboratorium atau rekognisi awal, tetapi penting untuk memahami setiap langkahnya agar tetap memiliki kendali penuh.
