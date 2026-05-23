# wpa_supplicant

`wpa_supplicant` adalah tool yang digunakan untuk menghubungkan perangkat ke jaringan Wi-Fi di Linux.

## Penggunaan

Mode foreground:

```bash
# stop service wpa_supplicant
sudo systemctl stop wpa_supplicant

# jalankan wpa_supplicant
sudo wpa_supplicant -i <interface> -c <file_config>
```

Mode background:

```bash
# stop service wpa_supplicant
sudo systemctl stop wpa_supplicant

# jalankan wpa_supplicant
sudo wpa_supplicant -i <interface> -c <file_config> -B
```

## File Config

Wi-Fi OPN:

```bash
ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=0

network={
    ssid="<ssid>"
    key_mgmt=NONE
}
```

Wi-Fi WEP:

```bash
ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=0

network={
    ssid="<ssid>"
    key_mgmt=NONE
    wep_key0="<kunci_wep>" # kunci WEP dalam format ASCII (diapit kutip dua)
    wep_tx_keyidx=0
}
```

Wi-Fi WPA2-Personal:

```bash
ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=0

network={
    ssid="<ssid>"
    key_mgmt=WPA-PSK
    psk="<password>"
}
```

Wi-Fi Hidden:

```bash
ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=0

network={
    ssid="<ssid>"
    scan_ssid=1
    key_mgmt=WPA-PSK
    psk="<password>"
}
```

Wi-Fi WPA3-Personal:

```bash
ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=0

network={
    ssid="<ssid>"
    key_mgmt=SAE
    sae_password="<password>"
    ieee80211w=2 # PMF mandatory untuk SAE
}
```

Wi-Fi OWE:

```bash
ctrl_interface=/var/run/wpa_supplicant
ctrl_interface_group=0

network={
    ssid="<ssid>"
    key_mgmt=OWE
    ieee80211w=2 # PMF mandatory untuk OWE
}
```
