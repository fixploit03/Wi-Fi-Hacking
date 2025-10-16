# TP-LINK TL-WN722N V2/V3

![TP-LINK TL-WN722N V2/V3](https://github.com/fixploit03/Pentest-WiFi/blob/main/instal%20driver/TP-LINK%20TL-WN722N%20V2/img/tplink-tlwn722n-v2.jpg)

## Informasi 

TP-LINK TL-WN722N (V2/V3) kadang mengalami kegagalan saat melakukan pemindaian Wi-Fi menggunakan airodump-ng, target Wi-Fi tidak muncul. Selain itu sering terjadi masalah ketika mengembalikan mode interface dari Monitor ke Managed.

Untuk mengatasi masalah tersebut, Anda dapat menginstal kernel Linux versi `5.15.5` menggunakan script Bash yang telah saya buat.

Link nya ada di sini: [https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/scripts/instal_kernel_linux_5.15.5.sh](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/scripts/instal_kernel_linux_5.15.5.sh)

## Instal Driver

> **Catatan:** Pastikan kernel Linux versi `5.15.5` sudah terinstal terlebih dahulu sebelum menginstal driver-nya.

1. Menggunakan DKMS:

   ```
   # 1. Update & upgrade Kali Linux
   $ sudo apt update && sudo apt upgrade
   $ sudo apt full-upgrade

   # 2. Instal dependensi
   $ sudo apt install dkms build-essential linux-headers-$(uname -r) git

   # 3. Kloning driver
   $ git clone https://github.com/aircrack-ng/rtl8188eus.git

   # 4. Pindah ke direktori driver
   $ cd rtl8188eus

   # 5. Blacklist modul kernel bawaan 'r8188eu'
   $ echo 'blacklist r8188eu' | sudo tee /etc/modprobe.d/realtek.conf
   
   # 6. Instal driver pake DKMS
   $ sudo ./dkms-install.sh

   # 7. Restart Kali Linux
   $ sudo reboot
   ```
2. Melalui compile dari source:

   ```
   # 1. Update & upgrade Kali Linux
   $ sudo apt update && sudo apt upgrade
   $ sudo apt full-upgrade

   # 2. Instal dependensi
   $ sudo apt install build-essential linux-headers-$(uname -r) git

   # 3. Kloning driver
   $ git clone https://github.com/aircrack-ng/rtl8188eus.git

   # 4. Pindah ke direktori driver
   $ cd rtl8188eus

   # 5. Blacklist modul kernel bawaan 'r8188eu'
   $ echo 'blacklist r8188eu' | sudo tee /etc/modprobe.d/realtek.conf
   
   # 6. Compile driver
   $ make

   # 7. Instal modul hasil compile ke sistem
   $ sudo make install

   # 8. Restart Kali Linux
   $ sudo reboot
   ```

## Video Demonstrasi

- Instal Driver TP-LINK TL-WN722N V2/V3 di Kali Linux:
  https://youtu.be/D_9mTjkAzM8?si=kFx-EhFpboVEUfoD
- Memperbaiki Masalah Pada TP-LINK TL-WN722N V2/V3 di Kali Linux:
  https://youtu.be/5qAqG-FzZiQ?si=l1YrXR0xpP_ItDnS
