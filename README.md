# Proxmox

Setting up a whole VM server cluster for testing purposes.

# Admin PDF 
https://pve.proxmox.com/pve-docs/pve-admin-guide.pdf

# With Docker 
https://www.servethehome.com/creating-the-ultimate-virtualization-and-container-setup-with-management-guis/


# Adding a sound card 
- add this line in end of vm config file

args: -device AC97,addr=0x18

# Must follow 
1. Organize sources if free usages

# Remove subscription message from web gui
- in command line 

      sed -i.bak "s/data.status !== 'Active'/false/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service
- Dont forget to clean cache and signin again to see effective. 
