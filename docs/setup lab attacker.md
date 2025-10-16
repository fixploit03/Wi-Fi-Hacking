# Setup Lab Attacker

## Aktifkan Fitur Virtualisasi (Intel VT-x / AMD-V) di BIOS/UEFI

Link Tutorial:
- [Studioungus](https://youtu.be/iockSahm_8w?si=HIkcTDZ5ZF3JgfE3)
- [Hendra K](https://youtu.be/IKyGdroNVaU?si=AyGqMIKyzsjSEViJ)

## Instal VirtualBox di Windows

Link Tutorial:
- [Levelup iD](https://youtu.be/cJCEJJSQkhk?si=yH4Mr0DVjIy5v0vS)
- [Goliketrik](https://www.youtube.com/watch?v=-FobDzVpZGU)

## Instal VirtualBox Extension Pack

Link Tutorial:
- [Mr Giga](https://youtu.be/bJcPo-j_3oI?si=Di_MgdKCNSjjavqb)

## Instal Kali Linux di VirtualBox

Link Tutorial:
- [Muslim, ST](https://youtu.be/KRzc0tiXlIw?si=tIh-vlyo4cooiNIB)
- [Fixploit03](https://youtu.be/wLdZW6woQQs?si=Jalz7mIBxSBG2DSz)

## Instal Parrot OS Security Edition di VirtualBox

Link Tutorial:
- [Meta4sec](https://youtu.be/XYJXuk2d2xc?si=PngGTy3hw3_PwNY-)
- [Fixploit03](https://youtu.be/tAYYoke9OQs?si=LUnwst182-E7WBDL)

## Konfigurasi Jaringan VM

Link Tutorial:
- [Case Tec](https://youtu.be/E3i6bkrgC8c?si=nwHqqQrJ8patosaL)
- [Kuman Labs](https://youtu.be/R6prlDcQSAc?si=t1jtZG8OehPc2-8R)

## Menyambungkan Adapter Wi-Fi ke VirtualBox

1. Pasang adapter Wi-Fi ke laptop/PC.
2. Pada aplikasi VirtualBox klik tab `Devices` -> `USB` -> `Jenis/merek`.
3. Pastikan checkbox nya sudah tercentang.
4. Buka terminal Kali Linux
5. Jalankan:

   ```
   iwconfig
   ```

   Pastikan nama interface muncul, misalnya `wlan0`, `wlan1`, atau `wlx…`. Jika belum muncul, kemungkinan drivernya belum terinstal.
  
## Optimasi & Kenyamanan

- Instal Guest Additions (jika perlu copy file dari host):

  Link Tutorial:
  - [Wahyu Pambudi](https://youtu.be/QDGJGUQni5g?si=q1sUP6HAFzYqG94r)

- Buat shared folder antara host dan guest (opsional):

  Link Tutorial:
  - [IT House Media](https://youtu.be/KK7Gp36ZVHQ?si=nxck1ZK1ETvk6Xr8)

- Update repositori Kali Linux:
  
  Link Tutorial:
  - [Fixploit03](https://youtu.be/VyK5ywA1CEY?si=08y2Rp0lqz7-9AWN)
