# iw

`iw` adalah tool CLI berbasis [nl80211](https://wireless.docs.kernel.org/en/latest/en/developers/documentation/nl80211.html) yang modern untuk konfigurasi dan manajemen interface wireless di Linux.

## Instalasi

```bash
sudo apt install -y iw
```

## Penggunaan

Lihat semua interface wireless yang tersedia:

```bash
iw dev
```

Lihat semua interface wireless yang tersedia beserta fitur yang didukung:

```bash
iw list
```

Lihat informasi interface wireless:

```bash
iw dev <interface> info
```

Lihat informasi PHY beserta beserta fitur yang didukung:

```bash
iw phy <phy> info
```

Ganti frekuensi:

```bash
sudo iw dev <interface> set freq <frekuensi>
```

Ganti channel:

```bash
sudo iw dev <interface> set channel <channel>
```

Ganti mode:

```bash
# Mode yang tersedia: managed, monitor, ap
sudo ip link set <interface> down
sudo iw dev <interface> set type <mode>
sudo ip link set <interface> up
```

Regulasi domain:

```bash
# Lihat regulasi domain saat ini
iw reg get

# Ganti regulasi domain
sudo iw reg set <kode_negara> # contoh ID = Indonesia atau BO = Bolivia

# Reload konfigurasi regulasi domain
sudo iw reg reload
```

Ganti TX Power:

```bash
sudo ip link set <interface> down
sudo iw dev <interface> set txpower fixed 3000 # 3000 mBm = 30 dBm
sudo ip link set <interface> up
```

Membuat virtual interface (VIF):

```bash
sudo iw dev <interface> interface add <interface>mon type <mode>
```

Hapus interface wireless:

```bash
sudo iw dev <interface> del
```
