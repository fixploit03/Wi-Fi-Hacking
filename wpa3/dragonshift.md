# dragonshift

`dragonshift` adalah tool CLI yang digunakan untuk melakukan WPA3-Transition Mode downgrade attack dengan memanfaatkan kerentanan [Dragonblood](https://wpa3.mathyvanhoef.com/).

## Instalasi

```bash
sudo apt update
sudo apt install -y python3 python3-scapy python3-colorama iw aircrack-ng hostapd-mana git
git clone https://github.com/jabbaw0nky/DragonShift
cd DragonShift
sed -i '1i #!/usr/bin/env python3' dragonshift.py
chmod +x dragonshift.py
```

## Penggunaan

```bash
sudo ./dragonshift.py -m <interface_mon> -r <interface_rogue>
```
