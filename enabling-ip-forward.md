# HOW TO ENABLING IPv4 FORWARD

1. add following line to ```/etc/sysctl.conf ```:

```bash
net.ipv4.ip_forward=1
```

2. to enable ip forwarding on a running linux system, run:

```bash
sysctl -w net.ipv4.ip_forward=0
```

point: the above command actually writes number `0` into the above mentioned file `/proc/sys/net/ipv4/ip_forward`

