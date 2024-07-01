# intel x550-t2 fix for auto negotiation
### Problem : 
if you use intell x550-t2 cards, and connect with 2.5G or 5G speed LAN , it wont work by default. You need to instruct firmware to run as supported speed not advertise. This is due to there are multiple OEM vendors use same chipset but they dont support 2.5g/5g speed by default. So, using this method, you can use those speed by allwing supported speed as advertised speed. 

### Solution 
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

### Test 
- Using this command, you should be able to see connection speed 
```
ethtool ens6f0
```
Output 

```
root@pve:~# ethtool ens6f0
Settings for ens6f0:
        Supported ports: [ TP ]
        Supported link modes:   100baseT/Full
                                1000baseT/Full
                                10000baseT/Full
                                2500baseT/Full
                                5000baseT/Full
        Supported pause frame use: Symmetric
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  100baseT/Full
                                1000baseT/Full
                                10000baseT/Full
                                2500baseT/Full
                                5000baseT/Full
        Advertised pause frame use: Symmetric
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Speed: 2500Mb/s
        Duplex: Full
        Auto-negotiation: on
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        MDI-X: Unknown
        Supports Wake-on: d
        Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
        Link detected: yes
```
