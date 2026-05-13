# capinfos

`capinfos` adalah tool CLI yang digunakan untuk melihat informasi dari file capture.

## Penggunaan

### Informasi Umum

Menampilkan informasi jenis file capture:

```bash
capinfos -t <file_capture>
```

Menampilkan hash SHA-256 dan SHA-1 dari file capture:

```bash
capinfos -H <file_capture>
```

### Informasi Ukuran

Menampilkan jumlah paket:

```bash
capinfos -c <file_capture>
```

Menampilkan ukuran file capture (dalam byte):

```bash
capinfos -s <file_capture>
```

Menampilkan total panjang semua paket (dalam byte):

```bash
capinfos -d <file_capture>
```

Menampilkan batas ukuran paket (panjang snapshot):

```bash
capinfos -l <file_capture>
```

### Informasi Waktu

Menampilkan durasi capture (dalam detik):

```bash
capinfos -u <file_capture>
```

Menampilkan timestamp paket paling awal:

```bash
capinfos -a <file_capture>
```

Menampilkan timestamp paket paling akhir:

```bash
capinfos -e <file_capture>
```

### Informasi Statistik

Menampilkan rata-rata data rate (dalam byte/detik):

```bash
capinfos -y <file_capture>
```

Menampilkan rata-rata ukuran paket (dalam byte):

```bash
capinfos -z <file_capture>
```

Menampilkan rata-rata packet rate (dalam paket/detik):

```bash
capinfos -x <file_capture>
```
