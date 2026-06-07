# airgeddon

`airgeddon` adalah framework CLI yang digunakan untuk melakukan audit keamanan pada jaringan Wi-Fi secara otomatis.

## Penggunaan

```
sudo airgeddon
```

## Daftar Menu

```bash
************************* airgeddon v11.61 main menu ************************** 
Interface wlan0 selected. Mode: Monitor. Supported bands: 2.4Ghz, 5Ghz 

Select an option from menu: 
--------- 
0.  Exit script 
1.  Select another network interface 
2.  Put interface in monitor mode 
3.  Put interface in managed mode 
--------- 
4.  DoS attacks menu 
5.  Handshake/PMKID/Decloaking tools menu 
6.  Offline WPA/WPA2 decrypt menu 
7.  Evil Twin attacks menu 
8.  WPS attacks menu 
9.  WEP attacks menu 
10. Enterprise attacks menu 
11. WPA3 attacks menu 
--------- 
12. About & Credits / Sponsorship mentions 
13. Options and language menu 
--------- 
Hint If you have ccze installed and are experiencing display errors or glitches on some windows, you should disable extended colorization in the options and language menu 
--------- 
> 
```

## Daftar Plugin

Multi interface:

```bash
wget https://raw.githubusercontent.com/xpz3/airgeddonplugins/refs/heads/main/multint.sh -P /usr/share/airgeddon/plugins/
```

WPA3 Dragon Drain:

```bash
wget https://raw.githubusercontent.com/Janek79ax/dragon-drain-wpa3-airgeddon-plugin/refs/heads/main/wpa3_dragon_drain.sh -P /usr/share/airgeddon/plugins/
wget https://raw.githubusercontent.com/Janek79ax/dragon-drain-wpa3-airgeddon-plugin/refs/heads/main/wpa3_dragon_drain_attack.py -P /usr/share/airgeddon/plugins/
```

## Tips Tambahan

Jika menggunakan Linux tanpa GUI:

```bash
sudo nano /usr/share/airgeddon/.airgeddonrc

# ubah
AIRGEDDON_WINDOWS_HANDLING=xterm

# menjadi
AIRGEDDON_WINDOWS_HANDLING=tmux
```

Skip animasi dan pengecekan dependensi:

```bash
sudo nano /usr/share/airgeddon/.airgeddonrc

# ubah
AIRGEDDON_SKIP_INTRO=false
AIRGEDDON_DEVELOPMENT_MODE=false

# menjadi
AIRGEDDON_SKIP_INTRO=true
AIRGEDDON_DEVELOPMENT_MODE=true
```
