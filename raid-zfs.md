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

# Import Existing zpool 

```zpool import -f data```

in here data is the pool name. Before running this, to see how many disk with label data as zfs member type, you may use command ```blkid``` to see details for each disk. 

# ZFS removal 
- Make sure you have not shared pool with samba/ftp. If shared, unshare this
- Unmount zpool
  - ```umount /data```
- Destroy Zpool
    - ```zpool destroy data``` , to destroy zpool.
    - Another way is from GUI , select your PVE host -> Disks -> select pool and right upper corner there is ```More``` -> select ```Destroy```
- if you dont want to desroy , you can export this ```zpool export  data```


Note : ```data``` is the zpool name i am using. 

# Usful Blog 
- https://www.thomas-krenn.com/en/wiki/ZFS_Pool_Import_-_Proxmox_single_host_reinstall_without_full_backup
