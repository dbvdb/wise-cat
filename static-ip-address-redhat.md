### set a static ip address in redhat

Assign a static ip to an ethernet
```bash
TYPE=Ethernet
Device=eth0
BOOTPROTO=none
ONBOOT=yes
PREFIX=24
IPADDR=192.168.1.99
```
