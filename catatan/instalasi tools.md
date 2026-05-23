# Instalasi Tools

1. Cek koneksi internet:

   ```bash
   ping google.com
   ```

2. Lihat repositori Kali Linux:

   ```
   cat /etc/apt/sources.list
   ```

   Pastikan isi repositorinya seperti ini:

   ```
   #deb cdrom:[Kali GNU/Linux 2026.1rc3 _Kali-last-snapshot_ - Official amd64 NETINST with firmware 20260320-05:33]/ kali-rolling main non-free-firmware

   deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware
   # deb-src http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware

   # This system was installed using removable media.
   # The matching "deb cdrom" entries were disabled at the end
   # of the installation process by preseed.
   # For information about how to configure apt package sources,
   # see the sources.list(5) manual.
   ```

3. Update repositori Kali Linux:

   ```
   sudo apt update
   ```

4. Instal tools:

   ```bash
   sudo apt install kali-tools-802-11 kali-tools-wireless
   ```
