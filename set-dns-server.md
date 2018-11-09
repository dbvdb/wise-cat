### How to set DNS server for ubuntu 18.04

+ Open the `/etc/resolvconf/resolv.conf.d/head` in vim and enter the following
    DNS servers in it:

```bash
nameserver 8.8.8.8
nameserver 9.9.9.9
```
