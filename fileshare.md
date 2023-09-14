# Here is how I share files in my network 

## Steps : 
- Install debian(i am installing debian 12) & add backports
- add this line for repo ```deb http://deb.debian.org/debian bookworm-backports main contrib```

![deb-repo]()

### Install cockpit to manage 

- From Backports 
```apt install -t bookworm-backports cockpit --no-install-recommends -y```

### Samba Share 

### FTP share
