# cowpatty

`cowpatty` adalah tool CLI yang digunakan untuk mengcrack handshake WPA/WPA2-PSK.

## Instalasi

```bash
sudo apt install -y cowpatty
```

## Penggunaan

Cek validitas 4-Way Handshake:

```bash
cowpatty -r <file_capture> -s <ssid> -c
```

Crack handshake menggunakan dictionary attack:

```bash
cowpatty -r <file_capture> -s <ssid> -f <wordlist> 
```

Crack handshake menggunakan pre-computed PMK:

```bash
# buat database PMK
genpmk -s <ssid> -f <wordlist> -d <output> 

# crack handshake
cowpatty -r <file_capture> -s <ssid> -d <database_pmk>  
```
