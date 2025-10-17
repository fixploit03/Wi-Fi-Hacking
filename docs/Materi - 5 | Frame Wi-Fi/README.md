# Materi - 5 | Frame Wi-Fi

![Materi - 5 | Frame Wi-Fi]()

Dalam jaringan Wi-Fi, komunikasi data dilakukan melalui frame. Frame Wi-Fi dibagi menjadi tiga kategori utama berdasarkan fungsinya:
- **Management Frames:** Untuk mengelola koneksi dan informasi jaringan.
- **Control Frames:** Untuk mengontrol aliran data dan memastikan transmisi yang efisien.
- **Data Frames:** Untuk mengangkut data pengguna antar perangkat.

## 5.1 Management Frames

Management frames digunakan untuk mengelola koneksi dan informasi jaringan dalam Wi-Fi. Berikut adalah subtipe management frames beserta filter Wireshark yang sesuai:

| Frame | Subtype | Filter Wireshark |
|:--:|:--:|:--|
| Association Request | 0x00 | `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x00` |
| Association Response | 0x01 | `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x01` |
| Reassociation Request | 0x02 | `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x02` |
| Reassociation Response | 0x03 | `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x03` |
| Probe Request | 0x04 | `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x04` |
| Probe Response | 0x05 | `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x05` |
| Beacon | 0x08	| `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x08` |
| Announcement Traffic Indication Message (ATIM) | 0x09	| `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x09` |
| Disassociation | 0x0A	| `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x0A` |
| Authentication | 0x0B	| `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x0B` |
| Deauthentication | 0x0C	| `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x0C` |
| Action | 0x0D | `wlan.fc.type == 0 && wlan.fc.type_subtype == 0x0D` |

## 5.2 Control Frames

Control frames digunakan untuk mengontrol aliran data dan memastikan transmisi yang efisien dalam jaringan Wi-Fi. Berikut adalah jenis control frames beserta filter Wireshark yang sesuai:

| Frame Type | Subtype | Filter Wireshark |
|:--:|:--:|:--:|
| RTS (Request to Send) | 0x1B | `wlan.fc.type == 1 && wlan.fc.type_subtype == 0x1B` |
| CTS (Clear to Send) | 0x1C | `wlan.fc.type == 1 && wlan.fc.type_subtype == 0x1C` |
| ACK (Acknowledgement) | 0x1D | `wlan.fc.type == 1 && wlan.fc.type_subtype == 0x1D` |
| PS-Poll (Power Save Poll) | 0x1A | `wlan.fc.type == 1 && wlan.fc.type_subtype == 0x1A` |

## 5.3 Data Frames

Data frames digunakan untuk mengangkut data pengguna antar perangkat dalam jaringan Wi-Fi. Berikut adalah jenis data frames beserta filter Wireshark yang sesuai:

|Frame Type | Subtype | Filter Wireshark |
|:--:|:--:|:--:|
| Data | 0x00 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x00` |
| QoS Data | 0x28 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x28` |
| Null Function | 0x24 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x24` |
| Data + CF-Ack | 0x08 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x08` |
| Data + CF-Poll | 0x18 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x18` |
| Data + CF-Ack + CF-Poll | 0x28 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x28` |
| QoS Data + CF-Ack | 0x38 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x38` |
| QoS Data + CF-Poll | 0x48 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x48` |
| QoS Data + CF-Ack + CF-Poll | 0x58 | `wlan.fc.type == 2 && wlan.fc.type_subtype == 0x58`

## 5.4 Ringkasan Filter Wireshark

Untuk menganalisis frame Wi-Fi menggunakan Wireshark, berikut adalah filter umum yang dapat digunakan:
- **Management Frames:** `wlan.fc.type == 0`
- **Control Frames:** `wlan.fc.type == 1`
- **Data Frames:** `wlan.fc.type == 2`

Untuk filter yang lebih spesifik, Anda dapat menambahkan `wlan.fc.type_subtype == [kode_subtype]` sesuai dengan jenis frame yang ingin dianalisis.
