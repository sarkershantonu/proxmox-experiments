# Steps 
- Create folder for sharing, i am using ```mkdir /mnt/vmshare``` 
- From WEB GUI, Datacenter -> Directory Mappings. Create a new directory mapping for the resource that references the local directory **VMShare**.
- in VM => hardware => Add => ```Virtiofsd``` type resource and select Direct IO and include that folder
- Mount that folder ```mount -t virtiofs VMShare /mnt/hostshare```
- for permanent mount, /etc/fstab => ```VMShare /mnt/hostshare virtiofs rw,relatime 0 0```
