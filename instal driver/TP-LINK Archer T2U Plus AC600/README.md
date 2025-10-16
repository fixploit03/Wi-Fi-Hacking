# TP-LINK Archer T2U Plus AC600

![TP-LINK Archer T2U Plus AC600]()

## Instal Driver

1. Menggunakan DKMS:

   ```
   # 1. Update & upgrade Kali Linux
   $ sudo apt update && sudo apt upgrade
   $ sudo apt full-upgrade

   # 2. Instal dependensi
   $ sudo apt install linux-headers-$(uname -r) build-essential bc dkms git libelf-dev rfkill iw

   # 3. Kloning driver
   $ git clone https://github.com/morrownr/8821au-20210708

   # 4. Pindah ke direktori driver
   $ cd 8821au-20210708
   
   # 5. Instal driver pake DKMS
   $ sudo ./dkms-install.sh

   # 6. Update tabel modul kernel
   $ sudo depmod -a

   # 7. Muat modul driver baru ke kernel
   $ sudo modprobe 8188eu

   # 8. Restart Kali Linux
   $ sudo reboot
   ```
2. Melalui compile dari source:

   ```
   # 1. Update & upgrade Kali Linux
   $ sudo apt update && sudo apt upgrade
   $ sudo apt full-upgrade

   # 2. Instal dependensi
   $ sudo apt install linux-headers-$(uname -r) build-essential bc dkms git libelf-dev rfkill iw

   # 3. Kloning driver
   $ git clone https://github.com/morrownr/8821au-20210708

   # 4. Pindah ke direktori driver
   $ cd 8821au-20210708

   # 5. Compile driver
   $ make

   # 6. Instal modul hasil compile ke sistem
   $ sudo make install

   # 7. Update tabel modul kernel
   $ sudo depmod -a

   # 8. Muat modul driver baru ke kernel
   $ sudo modprobe 8188eu

   # 99. Restart Kali Linux
   $ sudo reboot
   ```

## Video Demonstrasi

Instal Driver TP-LINK Archer T2U Plus AC600 di Kali Linux:
 
