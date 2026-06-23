# airmon-ng

`airmon-ng` adalah tool CLI yang digunakan untuk mengaktifkan dan menonaktifkan mode monitor pada interface wireless.

## Penggunaan

Cek proses yang menggunakan interface wireless:

```bash
sudo airmon-ng check
```

Matikan proses yang menggunakan interface wireless:

```bash
sudo airmon-ng check kill
```

Aktifkan mode monitor:

```bash
sudo airmon-ng start <interface>

# Di frekuensi tertentu
sudo airmon-ng start <interface> <frekuensi>

# Di channel tertentu
sudo airmon-ng start <interface> <channel>
```

Nonaktifkan mode monitor:

```bash
sudo airmon-ng stop <interface>
```
