# UBUNTU System Setup

1- Enter the following command:
```bash
apt remove --purge ufw snapd snappy 
apt install vim git gcc aria2c curl xclip terminator
```

2- Disable IPv6
```bash
net.ipv6.conf.all.disable_ipv6=1
net.ipv6.conf.lo.disable_ipv6=1
net.ipv6.conf.default.disable_ipv6=1
```
