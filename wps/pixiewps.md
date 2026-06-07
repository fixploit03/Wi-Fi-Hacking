# pixiewps

`pixiewps` adalah tool CLI yang digunakan untuk melakukan Pixie Dust Attack secara offline terhadap jaringan Wi-Fi yang mengaktifkan WPS.

## Penggunaan

```bash
pixiewps -e <pke> -r <pkr> -s <e-hash1> -z <e-hash2> -a <authkey> -n <e-nonce>
```

Keterangan:
- `-e`: Enrollee public key
- `-r`: Registrar public key
- `-s`: Enrollee hash-1
- `-z`: Enrollee hash-2
- `-a`: Authentication session key
- `-n`: Enrollee nonce
