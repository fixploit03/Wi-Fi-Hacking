# Wifite

![Wifite](https://github.com/fixploit03/Hack-WiFi/blob/main/tools/wifite/img/wifite%20logo.jpg)

## Instalasi

Kali Linux

Mengguakan packet manager (`apt`):

```
sudo apt-get update
sudo apt-get install python3 net-tools ieee-data aircrack-ng reaver tshark macchanger bully  cowpatty hashcat hashcat-data john john-data hcxdumptool hcxtools wifite
```

## Penggunaan

### 1. WEP

```
suido wifite --kill -i [interface] --wep --require-fakeauth --keep-ivs
```

### 2. WPA/WPA2-PSK

1. Capture Handshake

   ```
   sudo wifite --kill -i [interface] --wpa --no-pmkid --dict [wordlist]
   ```
2. Capture PMKID

   ```
   sudo wifite --kill -i [interface] --wpa --pmkid --dict [wordlist]
   ```

### 3. WPA/WPA2-PSK (WPS)

```
sudo wifite --kill -i [interface] --wpa --no-pmkid --wps --wps-only
```

## Video Demonstrasi:

Link: [https://youtu.be/j7DtOmEaOiM?si=wsgmdfxon8Z5y7-C](https://youtu.be/j7DtOmEaOiM?si=wsgmdfxon8Z5y7-C)
