# TP-LINK Archer T2U Plus AC600

![TP-LINK Archer T2U Plus AC600](https://github.com/fixploit03/Pentest-WiFi/blob/main/instal%20driver/TP-LINK%20Archer%20T2U%20Plus%20AC600/img/tplink-t2u-plus.jpg)

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
   $ sudo ./install-driver.sh

   # 6. Restart Kali Linux
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

   # 7. Restart Kali Linux
   $ sudo reboot
   ```

## Video Demonstrasi

- Instal Driver TP-LINK Archer T2U Plus AC600 di Kali Linux:  
  [https://youtu.be/YQ8M65tNIBw?si=9XenNki0VbwfHgw_](https://youtu.be/YQ8M65tNIBw?si=9XenNki0VbwfHgw_)
