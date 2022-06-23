# This will show steps to have next cloud in LXC

### Preapere a shared folder as next cloud data
- A disk mounted in /mnt/data/
- my choosen path /mnt/data/nextcloud/nextcloud-data 
- Change the permission of the folder to www-data
     chown -R www-data:www-data /mnt/data/nextcloud/nextcloud-data     
     chmod -R 0770 /mnt/data/nextcloud/nextcloud-data

### Setup next cloud 
- turnkey nexcloud image
- You can setup with domain name
- you can setup with let's encrypt
 
### Turn off LXC

### mount share folder from host

          pct set 102 -mp1 /mnt/data/nextcloud/nextcloud-data,mp=/var/www/nextcloud-data

Make sure , you can see this from webgui to your LXC, in my case 102


### Turn on LXC
and this should be ok. 

#Tips : 

- if you see http 500 on web gui, please see logs /var/www/nextcloud/data/nextcloud.log 
- if you see permisssion issues, you can redo permission from LXC 

          chown -R www-data:www-data /var/www/nextcloud-data     
          chmod -R 0770 /var/www/nextcloud-data

- To change permissoin , you may need to stop apache service ```service apache2 stop``` & start after changing permission     
