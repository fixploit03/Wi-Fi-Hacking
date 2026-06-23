# airodump-ng

`airodump-ng` adalah tool CLI yang digunakan untuk scanning dan capture paket Wi-Fi.

## Penggunaan

### Scanning

Scan semua Wi-Fi (dasar):

```bash
sudo airodump-ng <interface>

# airodump-ng default scanning di frekuensi 2.4 GHz
```

Scan Wi-Fi berdasarkan BSSID:

```bash
sudo airodump-ng -d <bssid> <interface>
```

Scan Wi-Fi berdasarkan ESSID:

```bash
sudo airodump-ng -N <essid> <interface>
```

Scan Wi-Fi berdasarkan channel:

```bash
sudo airodump-ng -c <channel> <interface>
```

Scan Wi-Fi berdasarkan frekuensi:

```bash
sudo airodump-ng -C <frekuensi> <interface>
```

Scan Wi-Fi berdasarkan band:

```bash
# Scan Wi-Fi 5 GHz
sudo airodump-ng -b a <interface>

# Scan Wi-Fi 2.4 GHz
sudo airodump-ng -b bg <interface>

# Scan Wi-Fi 5 & 2.4 GHz
sudo airodump-ng -b abg <interface>
```

Scan Wi-Fi berdasarkan jenis keamanan:

```bash
# Scan Wi-Fi WEP
sudo airodump-ng -t WEP <interface>

# Scan Wi-Fi WPA1
sudo airodump-ng -t WPA1 <interface>

# Scan Wi-Fi WPA2
sudo airodump-ng -t WPA2 <interface>

# Scan Wi-Fi WPA3
sudo airodump-ng -t WPA3 <interface>

# Scan Wi-Fi OWE
sudo airodump-ng -t OWE <interface>
```

Scan Wi-Fi berdasarkan PWR:

```bash
sudo airodump-ng -p <power> <interface> # integer
```

Scan Wi-Fi berdasarkan client yang terhubung:

```bash
sudo airodump-ng -a <interface>
```

Scan Wi-Fi berdasarkan client yang tidak terhubung:

```bash
sudo airodump-ng -z <interface>
```

Scan Wi-Fi yang mengaktifkan fitur WPS:

```bash
sudo airodump-ng -W <interface>
```

Scan Wi-Fi dan menampilkan vendornya:

```bash
sudo airodump-ng -M <interface>
```

### Capture Paket Wi-Fi

Capture IVs WEP:

```bash
sudo airodump-ng -d <bssid> -c <channel> -w <output> -o ivs <interface>
```

Capture handshake WPA/WPA2-PSK:

```bash
sudo airodump-ng -d <bssid> -c <channel> -w <output> -o pcap <interface>
```

## Cara Membaca Output airodump-ng

Contoh output:

```bash
CH  3 ][ Elapsed: 6 s ][ 2026-05-12 19:11 

BSSID              PWR  Beacons    #Data, #/s  CH   MB   ENC CIPHER  AUTH ESSID
                                                                                 
68:59:11:25:43:20  -47       13      431  164   1  130   WPA2 CCMP   PSK  Tetangga Sebelah                                                                                                                                                                 
A0:CF:F5:FA:D6:B4  -78        5        0    0  10  130   WPA2 CCMP   PSK  Mantan CANTIK                                                                                   

BSSID              STATION            PWR    Rate    Lost   Frames  Notes  Probes

68:59:11:25:43:20  1A:64:7D:BB:74:75  -24    0 - 1e     0        4                                                                                                          
68:59:11:25:43:20  7E:87:32:F9:6F:9C  -89    0 - 1e     6        4                                                                                                          
68:59:11:25:43:20  E2:BC:EF:24:5A:4E  -55    1e- 1e   226      432                                                                                                          
A0:CF:F5:FA:D6:B4  46:C3:3A:AA:7F:41  -85    0 - 1e    14        2                                                                                                          
A0:CF:F5:FA:D6:B4  B6:74:E4:C1:F6:01  -85    0 - 1      0        4    
```

### Kolom Atas

```bash
CH  3 ][ Elapsed: 6 s ][ 2026-05-12 19:11 
```

Keterangan:
- `CH  3`: channel yang sedang di-scan
- `Elapsed: 6 s`: lama proses scanning berjalan (dalam detik)
- `2026-05-12 19:11`: waktu saat ini

### Kolom Tengah

```
BSSID              PWR  Beacons    #Data, #/s  CH   MB   ENC CIPHER  AUTH ESSID

68:59:11:25:43:20  -47       13      431  164   1  130   WPA2 CCMP   PSK  Tetangga Sebelah
A0:CF:F5:FA:D6:B4  -78        5        0    0  10  130   WPA2 CCMP   PSK  Mantan CANTIK
```

Keterangan:
- `BSSID`: MAC address AP
- `PWR`: kekuatan sinyal dalam dBm (semakin mendekati 0, semakin kuat)
- `Beacons`: jumlah beacon frame yang berhasil di-capture
- `#Data`: jumlah data frame yang berhasil di-capture
- `#/s`: jumlah data frame per detik
- `CH`: channel yang digunakan oleh AP
- `MB`: kecepatan maksimum yang didukung oleh AP (dalam Mbps)
- `ENC`: jenis keamanan yang digunakan oleh AP (OPN, WEP, WPA, WPA2, WPA3)
- `CIPHER`: algoritma enkripsi yang digunakan oleh AP (CCMP, TKIP, WEP, dll.)
- `AUTH`: jenis autentikasi yang digunakan oleh AP (PSK, MGT, SAE, OPN)
- `ESSID`: nama Wi-Fi

### Kolom Bawah

```
BSSID              STATION            PWR    Rate    Lost   Frames  Notes  Probes

68:59:11:25:43:20  1A:64:7D:BB:74:75  -24    0 - 1e     0        4
68:59:11:25:43:20  7E:87:32:F9:6F:9C  -89    0 - 1e     6        4
68:59:11:25:43:20  E2:BC:EF:24:5A:4E  -55    1e- 1e   226      432
A0:CF:F5:FA:D6:B4  46:C3:3A:AA:7F:41  -85    0 - 1e    14        2
A0:CF:F5:FA:D6:B4  B6:74:E4:C1:F6:01  -85    0 - 1      0        4
```

Keterangan:
- `BSSID`: MAC address AP yang terhubung dengan client
- `STATION`: MAC address client yang terhubung
- `PWR`: kekuatan sinyal client dalam dBm
- `Rate`: kecepatan transfer data (AP ke client - client ke AP) dalam Mbps
- `Lost`: jumlah paket yang hilang dalam 10 detik terakhir
- `Frames`: jumlah frame yang berhasil di-capture dari client
- `Notes`: informasi tambahan (contoh: EAPOL saat handshake tertangkap)
- `Probes`: SSID yang sedang di-probe oleh client
