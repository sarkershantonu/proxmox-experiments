# Immich Personal Photo server
- Default port 2283

### Use Custom Folder 
- Stop immich LXC after setup 
- In Host, make a folder and change permissions
```
mkdir -p /mnt/immich-photos
chown -R 100000:100000 /mnt/immich-photos
chmod -R 755 /mnt/immich-photos

```
- from host, allow the lxc to use the folder as mount storage , you can use the command ```pct set 299 -mp1 /mnt/immich-photos=/data/immich-photos```
- Start LXC
- Create the folder and take ownership
```
mkdir -p /data/immich-photos
chown -R immich:immich /data/immich-photos
chmod -R 775 /data/immich-photos
```
- copy the data content ``` cp -ra /opt/immich/upload/* /data/immich-photos```
  
- Change folcer location configuration in **.env** ```IMMICH_MEDIA_LOCATION=/data/immich-photos```
- Restart all Immich services ```service  immich* restart  ```, status check ```service  immich* status```
