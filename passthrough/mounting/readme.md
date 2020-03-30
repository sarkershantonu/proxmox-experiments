# Pass throught host directory to guest
 pct set 299 -mp1 /media/share,mp=/media/share
 
 # in here 
 - id = 299
 - mp1 is mount point name 
 - /media/share is root path
 - (mp=)/media/share destination path
 
 # Pass throught to Vm 
 https://pve.proxmox.com/wiki/Physical_disk_to_kvm
