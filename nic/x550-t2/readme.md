# intel x550-t2 fix for auto negotiation

- edit ```/etc/network/interfaces```

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
