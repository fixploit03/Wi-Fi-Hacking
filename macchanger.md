# macchanger

`macchanger` adalah tool CLI yang digunakan untuk mengubah MAC address.

## Instalasi

```bash
sudo apt update
sudo apt install macchanger
```

## Penggunaan

Lihat MAC address yang sedang dipakai:

```bash
macchanger -s <interface>
```

Ganti MAC address secara random:

```bash
sudo ip link set <interface> down
sudo macchanger -r <interface>
sudo ip link set <interface> up
```

Ganti MAC address ke MAC tertentu:

```bash
sudo ip link set <interface> down
sudo macchanger -m <mac_address> <interface>
sudo ip link set <interface> up
```

Mengembalikan MAC address:

```bash
sudo ip link set <interface> down
sudo macchanger -p <interface>
sudo ip link set <interface> up
```
