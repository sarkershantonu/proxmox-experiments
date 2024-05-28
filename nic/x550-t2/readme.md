# intel x550-t2 fix for auto negotiation
- install ethtool ```apt install ethtool```
- edit ```/etc/network/interfacess```  add  followiing lines for your network interface name, these are mine **ens6f0 ens6f1**

```
iface ens6f1 inet manual
pre-up /usr/sbin/ethtool -s ens6f1 advertise 0x1800000001028

iface ens6f0 inet manual
pre-up /usr/sbin/ethtool -s ens6f0 advertise 0x1800000001028

```

### negotiation speed hint

```
0x008 - 100baseT
0x020 - 1000baseT Full
0x800000000000 - 2500baseT Full
0x1000000000000 - 5000baseT Full
0x1000 - 10000baseT Full
```

Original Post : https://forum.proxmox.com/threads/x550-x550-t2-duplex-auto-negotiation.116776/
