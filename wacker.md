# wacker

`wacker` adalah tool CLI yang digunakan untuk melakukan serangan online dictionary attack terhadap Access Point WPA3.

## Instalasi

```bash
sudo apt update
sudo apt install -y python3 pkg-config libnl-3-dev gcc libssl-dev libnl-genl-3-dev git
git clone https://github.com/blunderbuss-wctf/wacker
cd wacker
cp defconfig wpa_supplicant-2.10/wpa_supplicant/.config
git apply wpa_supplicant.patch
cd wpa_supplicant-2.10/wpa_supplicant
make -j $(nproc)
```

## Penggunaan

```bash
sudo ./wacker.py --interface <interface> --ssid <ssid> --bssid <bssid> --freq <frekuensi> --wordlist <wordlist>
```

Keterangan:
- `--interface`: Nama interface wireless yang ingin digunakan
- `--ssid`: SSID target yang ingin diuji
- `--bssid`: BSSID dari AP
- `--freq`: Frekuensi yang digunakan oleh AP
- `--wordlist`: Wordlist yang ingin digunakan

## Batasan

- **Lambat**: Kecepatan serangan dibatasi oleh mekanisme SAE handshake pada WPA3, sehingga jauh lebih lambat dibandingkan offline cracking pada WPA2.
- **Bergantung pada wordlist**: Serangan tidak akan efektif apabila password target tidak terdapat di dalam wordlist.
- **Rentan terhadap lockout**: AP modern umumnya akan memblokir koneksi secara otomatis setelah beberapa kali percobaan gagal.
- **Bergantung pada kualitas sinyal**: Jarak yang jauh dan interferensi sinyal Wi-Fi dapat menyebabkan percobaan koneksi menjadi tidak konsisten atau gagal.

## Referensi
- [https://github.com/blunderbuss-wctf/wacker](https://github.com/blunderbuss-wctf/wacker)
- [https://w1.fi/wpa_supplicant/](https://w1.fi/wpa_supplicant/)
- [https://www.aircrack-ng.org/doku.php?id=airmon-ng](https://www.aircrack-ng.org/doku.php?id=airmon-ng)
