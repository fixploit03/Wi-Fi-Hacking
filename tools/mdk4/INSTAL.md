## Instalasi

Kali Linux:

1. Menggunakan package manager (`apt`):

   ```
   sudo apt-get update
   sudo apt-get install mdk4 aircrack-ng
   ```

2. Melalui compile dari source:
   
   ```
   sudo apt-get update
   sudo apt-get install pkg-config libnl-3-dev libnl-genl-3-dev libpcap-dev git
   git clone https://github.com/aircrack-ng/mdk4
   cd mdk4
   make
   sudo make install
   ```
