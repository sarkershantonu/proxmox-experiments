# Backup &  Restore


# Backup
![Backup](./2_backup.PNG)

![Process/Log](./3_backupProcess.PNG)
# Restore VMs
qmrestore _backup_file _id_

# Restore Containers 
- pct restore _id_ _restoring_file_from_ --storage _storage_name
Example : 

in local-lvm

```pct restore 250 vzdump-lxc-250-2018_06_04-02_18_45.tar.lzo --storage local-lvm ```


in zfs (mPool)

```pct restore 104 /mnt//media/dump/vzdump-lxc-102-2022_10_12-20_30_13.tar.zst -storage mPool --unprivileged 1```
