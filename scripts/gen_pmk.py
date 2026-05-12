#!/usr/bin/env python3
#
# Script python3 untuk menghitung PMKID

import hmac, hashlib

# SSID (Nama Wi-Fi)
ssid = "TESTING"

# MAC address AP (tanpa ':')
mac_ap = bytes.fromhex("3C5AB498EF01")

# MAC address STA (tanpa ':')
mac_sta = bytes.fromhex("501479A1B2C3")

# Password Wi-Fi (8-63 karakter)
password = "12345678"

# Derive PMK (Pairwise Master Key) dari password + SSID
# menggunakan PBKDF2-HMAC-SHA1 dengan 4096 iterasi, hasil 32 byte
pmk = hashlib.pbkdf2_hmac("sha1", password.encode(), ssid.encode(), 4096, 32)

# Hitung PMKID menggunakan rumus standar IEEE 802.11i:
# PMKID = HMAC-SHA1-128(PMK, "PMK Name" || MAC_AP || MAC_STA)
# ambil 16 byte pertama dari hasil digest
pmkid = hmac.new(pmk, b"PMK Name" + mac_ap + mac_sta, hashlib.sha1).digest()[:16]

print(f"[+] PMKID : {pmkid.hex()}")
