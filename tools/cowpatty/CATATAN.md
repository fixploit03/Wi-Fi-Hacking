## Catatan Penting

1. Metode Dictionary Attack (Manual/Basic):
   - Mode ini melakukan perhitungan PMK (Pairwise Master Key) secara real-time untuk setiap password dari wordlist, sehingga prosesnya sangat lambat karena harus melalui fungsi `PBKDF2` dengan 4096 iterasi.
   - Cocok digunakan untuk menyerang SSID yang unik atau jarang digunakan, namun sangat bergantung pada spesifikasi hardware (CPU) yang digunakan.
2. Mode Pre-computed PMK Caching (Rainbow Table):
   - Mode ini menggunakan rainbow table berisi PMK yang telah dihitung sebelumnya, sehingga proses cracking jauh lebih cepat karena hanya melakukan pencocokan tanpa perhitungan real-time.
   - Rainbow table harus dibuat terlebih dahulu menggunakan tool seperti `genpmk` dengan SSID spesifik dan membutuhkan ruang penyimpanan besar, namun hanya berlaku untuk SSID tertentu sehingga tidak bersifat universal.
