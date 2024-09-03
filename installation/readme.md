# Change Distribution Package Update repo


 install prompt during boot 
 
 Swap 16gb
minfree 16gb : Defines the amount of free space left in the LVM volume group pve. With more than 128GB storage available the default is 16GB, else hdsize/8 will be used. Note	LVM requires free space in the VG for snapshot creation (not required for lvmthin snapshots). 

maxroot 128gb = Defines the maximum size of the root volume, which stores the operation system. The maximum limit of the root volume size is hdsize/4.

maxvz/datasize = hdsize - rootsize - swapsize - minfree

# Update manager 
```pveam update```


# initial steps
