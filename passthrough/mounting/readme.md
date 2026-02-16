# Pass throught host directory to guest
 pct set 299 -mp1 /media/share,mp=/media/share
 
 # in here 
 - id = 299
 - mp1 is mount point name 
 - /media/share is root path
 - (mp=)/media/share destination path
 
 # Passthrought Disk to Vm(https://pve.proxmox.com/wiki/Passthrough_Physical_Disk_to_Virtual_Machine_(VM))

# [Passthrough folder to VM by virtiofs](mount-folder-vm-by-virtiofs.md)
