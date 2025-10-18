🎯 Roadmap Wi-Fi Penetration Testing
LEVEL 1: FONDASI DASAR (2-3 minggu)
1.1 Memahami Konsep Jaringan & Wi-Fi

    Topik yang dipelajari:

        OSI & TCP/IP Model

        Konsep IP Addressing, Subnetting

        Cara kerja Wi-Fi (SSID, BSSID, Channels, Frequency)

        Standar Wi-Fi (802.11a/b/g/n/ac/ax)

        Modes Operation (Managed, Monitor, Master)

1.2 Setup Environment Lab

    Tools yang diperlukan:

        Kali Linux / Parrot OS

        Virtual Box/VMware

        Wi-Fi Adapter yang kompatible (ALFA AWUS036ACH disarankan)

        Access Point untuk testing

LEVEL 2: TEKNIK FUNDAMENTAL (3-4 minggu)
2.1 Reconnaissance & Monitoring

    Tools praktik:

        airmon-ng - Mengaktifkan monitor mode

        airodump-ng - Monitoring jaringan Wi-Fi

        wash - Mendeteksi WPS

        kismet - Wireless network detector

    Yang dipelajari:

        Identifikasi jaringan target

        Gathering client information

        Channel hopping techniques

2.2 WEP Cracking (Untuk pemahaman historis)

    Teknik:

        ARP Request Replay Attack

        KoreK Attack

        Fragmentation Attack

    Tools: aireplay-ng, aircrack-ng

2.3 WPA/WPA2 Personal Cracking

    Konsep yang harus dipahami:

        Four-way handshake

        PMK & PTK concepts

        Pre-shared Key vulnerabilities

    Workflow:

        Capture handshake

        Wordlist attack dengan aircrack-ng

        Using hashcat untuk GPU acceleration

LEVEL 3: TEKNIK INTERMEDIATE (4-5 minggu)
3.1 Advanced WPA Attacks

    PMKID Attack dengan hcxdumptool

    Evil Twin Attack

    WPS PIN Attacks dengan reaver, bully

    WPA Enterprise Introduction

3.2 Rogue Access Point

    Tools: airbase-ng, hostapd

    Teknik:

        Creating fake AP

        DNS spoofing

        Captive portal attacks

3.3 Client-based Attacks

    Deauthentication Attacks (aireplay-ng --deauth)

    MAC Spoofing

    Karma Attacks

    MITM pada Wi-Fi

LEVEL 4: TEKNIK ADVANCED (4-6 minggu)
4.1 WPA3 Penetration Testing

    Dragonblood Vulnerabilities

    SAE Handshake analysis

    Transition mode attacks

4.2 Enterprise Wi-Fi Testing

    EAP Methods understanding

    PEAP/MSCHAPv2 attacks

    EAP-TLS certificate attacks

    FreeRADIUS testing

4.3 Wireless Exploitation Frameworks

    Wifiphisher - Social engineering framework

    Linset - Automatic attack tool

    Fern Wifi Cracker - GUI-based tool

LEVEL 5: SPECIALIZED TOPICS (3-4 minggu)
5.1 IoT & Wireless Security

    Bluetooth hacking dengan bluelog, hcitool

    ZigBee security

    RFID/NFC hacking

5.2 Wireless Forensics & Detection

    Detecting rogue APs

    Wireless IDS/IPS

    Forensic analysis of wireless attacks

5.3 Advanced Defense Techniques

    WIPS implementation

    802.1X best practices

    Wireless security hardening
