## Catatan Penting

1. Capture Handshake:
   - Untuk capture handshake, diperlukan minimal satu client yang terhubung ke Wi-Fi.
   - Jika tidak ada client yang terhubung, tidak ada target yang dapat di-deauth, sehingga handshake tidak akan berhasil didapatkan.
2. Capture PMKID:
   - Serangan PMKID memungkinkan pengambilan hash yang dapat di-crack secara offline tanpa harus menangkap 4-way handshake dari client. Attacker dapat meminta dan menangkap PMKID langsung dari respons AP (biasanya dalam frame `EAPOL M1`), sehingga keberadaan client yang terhubung tidak diperlukan.
   - Keberhasilan serangan bergantung pada implementasi dan firmware AP, tidak semua AP mengirimkan PMKID dalam responsnya. Router modern atau yang sudah di-patch mungkin tidak menyertakan PMKID, sehingga serangan ini tidak selalu efektif pada semua target meskipun bersifat clientless.
