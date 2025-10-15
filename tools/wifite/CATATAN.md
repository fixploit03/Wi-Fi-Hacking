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
