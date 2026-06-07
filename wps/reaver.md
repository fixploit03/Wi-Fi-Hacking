# reaver

`reaver` adalah tool CLI yang digunakan untuk melakukan audit keamanan pada jaringan Wi-Fi yang mengaktifkan WPS.

## Penggunaan

Pixie Dust Attack:

```bash
sudo reaver -i <interface> -e <essid> -b <bssid> -c <channel> -K -vv
```

Known PIN Attack:

```bash
sudo reaver -i <interface> -e <essid> -b <bssid> -c <channel> -p <pin> -vv
```

NULL PIN Attack:

```bash
sudo reaver -i <interface> -e <essid> -b <bssid> -c <channel> -p "" -vv
```

PIN Brute Force Attack:

```bash
sudo reaver -i <interface> -e <essid> -b <bssid> -c <channel> -vv
```
