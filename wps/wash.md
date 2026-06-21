# wash

`wash` adalah tool CLI yang merupakan bagian dari `reaver`, tool ini digunakan untuk mencari Wi-Fi yang mengaktifkan WPS.

## Penggunaan

Scan dasar:

```bash
sudo wash -i <interface>
```

Scan channel 2.4 GHz:

```bash
sudo wash -i <interface> -2
```

Scan channel 5 GHz:

```bash
sudo wash -i <interface> -5
```

Scan mode dengan menampilkan persentase progres crack:

```bash
sudo wash -i <interface> -p -s
```
