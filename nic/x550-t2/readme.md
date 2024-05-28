# intel x550-t2 fix for auto negotiation
- install ethtool ```apt install ethtool```
- edit ```/etc/network/interfacess```

```
auto lo
iface lo inet loopback

iface eno1 inet manual

iface eno2 inet manual

iface ens6f1 inet manual
pre-up /usr/sbin/ethtool -s ens6f1 advertise 0x1800000001028

iface ens6f0 inet manual
pre-up /usr/sbin/ethtool -s ens6f0 advertise 0x1800000001028

iface ens2 inet manual

auto vmbr0
iface vmbr0 inet static
        address 192.168.1.2/24
        gateway 192.168.1.1
        bridge-ports eno1 eno2 ens2 ens6f0 ens6f1
        bridge-stp off
        bridge-fd 0

```

- negotiation speed hint

```
0x008 - 100baseT
0x020 - 1000baseT Full
0x800000000000 - 2500baseT Full
0x1000000000000 - 5000baseT Full
0x1000 - 10000baseT Full
```

Original Post : https://forum.proxmox.com/threads/x550-x550-t2-duplex-auto-negotiation.116776/
