# Wifite

![Wifite](https://github.com/fixploit03/Pentest-WiFi/blob/main/tools/wifite/img/wifite.jpg)

## Instalasi

Kali Linux

Mengguakan packet manager (`apt`):

```
sudo apt-get update
sudo apt-get install python3 net-tools ieee-data aircrack-ng reaver tshark macchanger bully  cowpatty hashcat hashcat-data john john-data hcxdumptool hcxtools wifite
```

## Setup Adapter Wi-Fi

1. Pasang adapter Wi-Fi ke laptop/PC.
2. Pada aplikasi VirtualBox klik tab `Devices` -> `USB` -> `Jenis/merek`.
3. Pastikan checkbox nya sudah tercentang.
4. Buka terminal.
5. Ketikkan `iwconfig`, pastikan nama interface `wlan0` muncul.
6. Kalau sudah muncul, aktifkan mode monitor menggunakan:

   ```
   sudo airmon-ng check kill
   sudo airmon-ng start wlan0
   ```
7. Cek kembali menggunakan `iwconfig` apakah mode interfacenya sudah berubah menjadi mode `Monitor`.
8. Cek packet injection menggunakan:

   ```
   sudo aireplay-ng --test wlan0
   ```
   
## Penggunaan

**1. WEP:**

```
sudo wifite --kill -i [interface] --wep --require-fakeauth --keep-ivs
```

**2. WPA/WPA2-PSK:**

1. Capture Handshake:

   ```
   sudo wifite --kill -i [interface] --wpa --no-pmkid --dict [wordlist]
   ```
2. Capture PMKID:

   ```
   sudo wifite --kill -i [interface] --wpa --pmkid --dict [wordlist]
   ```

**3. WPA/WPA2-PSK (WPS):**

```
sudo wifite --kill -i [interface] --wpa --no-pmkid --wps --wps-only
```

## Catatan Penting

1. WEP:
   - Agar serangan ARP Replay berhasil, minimal harus ada satu client yang sedang terhubung ke Access Point (AP).
   - Tanpa adanya client yang terhubung, tidak ada traffic ARP yang dapat ditangkap dan di-replay, sehingga serangan kemungkinan besar akan gagal.
2. WPA/WPA2-PSK (Handshake):
   - Untuk melakukan serangan Deauthentication dan menangkap 4-way handshake, diperlukan minimal satu client yang terhubung ke jaringan.
   - Jika tidak ada client yang terhubung, tidak ada target yang dapat di-deauth, sehingga handshake tidak akan berhasil didapatkan.
3. WPA/WPA2-PSK (PMKID):
   - Serangan PMKID memungkinkan pengambilan hash yang dapat di-crack secara offline tanpa harus menangkap 4-way handshake dari client. Attacker dapat meminta dan menangkap PMKID langsung dari respons AP (biasanya dalam frame `EAPOL M1`), sehingga keberadaan client yang terhubung tidak diperlukan.
   - Keberhasilan serangan bergantung pada implementasi dan firmware AP, tidak semua AP mengirimkan PMKID dalam responsnya. Router modern atau yang sudah di-patch mungkin tidak menyertakan PMKID, sehingga serangan ini tidak selalu efektif pada semua target meskipun bersifat clientless.
4. WPA/WPA2-PSK (WPS):  
   Semua jenis serangan WPS (`Brute Force PIN Attack`, `Pixie Dust Attack`, `Known PIN Attack`, dan `Null PIN Attack`) tidak memerlukan keberadaan client yang terhubung ke Access Point. Hal ini dikarenakan serangan WPS berkomunikasi dan menargetkan mekanisme WPS secara langsung pada Access Point, berbeda dengan serangan `WPA/WPA2-PSK` yang memerlukan minimal satu client aktif untuk menangkap handshake. Keberhasilan serangan WPS bergantung pada status aktif fitur WPS di AP dan kerentanan implementasi WPS pada router target, bukan pada aktivitas client yang terhubung.

## Video Demonstrasi:

[https://youtu.be/j7DtOmEaOiM?si=wsgmdfxon8Z5y7-C](https://youtu.be/j7DtOmEaOiM?si=wsgmdfxon8Z5y7-C)
