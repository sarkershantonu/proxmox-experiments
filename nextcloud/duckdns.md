# this is scripts for duckdns entry renewal
- This is important if you IP changes from ISP

### Install Tools 
- Install CURL ```sudo apt -y install curl```


### Renewal Script 

- ```echo url="https://www.duckdns.org/update?domains=YOUR_DOMAIN_NAME&token=YOUT_TOKEN&ip=" | curl -k -o ~/duckdns/LOG_FILE_NAME.log -K -```

You need to provide 
YOUR_DOMAIN_NAME
YOUT_TOKEN
LOG_FILE_NAME

### Edit cron tab in your favirate editor 
- ```crntab -e``` 
- if you want to open in your faviorate editor (like me, i like nano) ... ```EDITOR=nano crontab -e```

```*/5 * * * * ~/duckdns/duck.sh >/dev/null 2>&1``` - this is running every 5 min. If you have custom period in mind, you may see this [**site**](https://crontab.guru/) to get exact expression for your desired time interval. 

# Original Source : 
https://www.duckdns.org/install.jsp
