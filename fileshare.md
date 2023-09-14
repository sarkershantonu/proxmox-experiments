# Here is how I share files in my network 

## Steps : 
- Install debian(i am installing debian 12) & add backports
- add this line for repo ```deb http://deb.debian.org/debian bookworm-backports main contrib```

![deb-repo](/images/backports_install_deb12.jpg)

### Install cockpit to manage 

- From Backports 
```apt install -t bookworm-backports cockpit --no-install-recommends -y```

- Allow root user login by removing root from  ```/etc/cockpit/disallowed-users ```

- Install these basic modules , try getting latest versions
  -- https://github.com/45Drives/cockpit-file-sharing/releases/
  
  -- https://github.com/45Drives/cockpit-navigator/releases/
  
  -- https://github.com/45Drives/cockpit-identities/releases/

you may use the command ```apt install ./*.deb``` to install all togather after download 

in network section you may see additionals items to install as part of NFS, install those (samba will be install)

### Samba Share 

### FTP share

Good Resources : 
https://www.youtube.com/watch?v=Hu3t8pcq8O0
