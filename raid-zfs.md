# Mirror Raid Pool for two 4tb drive 

    zpool create -f -o ashift=12 mrrpool mirror /dev/sdb1 /dev/sdf1
    
    
- f : force 
- mrrpool is the name of my pool
- /dev/sdb1 /dev/sdf1 : are my two 4tb drives

# Usefull Commands  
- zpool status : to know zpool status
- zfs list : to know available zfs 

# Last step : use WebGui to add zPool 


# Mount a pool to proxmox host

Way 1 : zfs mount name_of_your_pool

```zfs mount mrrpool```

Way 2 : zfs export name_of_your_pool
```zfs export mrrpool```
