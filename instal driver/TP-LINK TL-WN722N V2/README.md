# TP-LINK TL-WN722N V2/V3

![TP-LINK TL-WN722N V2/V3](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/instal%20driver/TP-LINK%20TL-WN722N%20V2/img/TP-LINK%20TL-WN722N.png)

## Instal

1. Pake DKMS:

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

   # 6. Lepaskan modul kernel bawaan 'r8188eu' jika sedang ter-load
   sudo modprobe -r r8188eu
   
   # 7. Instal driver via DKMS
   sudo ./dkms-install.sh

   # 8. Perbarui tabel modul kernel
   $ sudo depmod -a

   # 9. Muat modul driver baru ke kernel
   $ sudo modprobe 8188eu

   # 10. Restart Kali Linux
   $ sudo reboot
   ```
2. Compile:

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
   echo 'blacklist r8188eu' | sudo tee /etc/modprobe.d/realtek.conf

   # 6. Lepaskan modul kernel bawaan 'r8188eu' jika sedang ter-load
   sudo modprobe -r r8188eu

   # 7. Compile driver
   $ make

   # 8. Install modul hasil compile ke sistem
   $ sudo make install

   # 9. Perbarui tabel modul kernel
   $ sudo depmod -a

   # 10. Muat modul driver baru ke kernel
   $ sudo modprobe 8188eu

   # 11. Restart Kali Linux
   $ sudo reboot
   ```
