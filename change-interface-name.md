#### CHANGE INTERFACE NAME
1. Add following line to ```/etc/default/grub``` : 
```bash
GRUB_CMDLINE_LINUX_DEFAULT="net.ifnames=0 bios.devname=0"
```
2. Find the mac address of interface from:

```bash
cat /sys/class/net/enp0s8/address
```

3. Change the configuration of NIC in `/etc/netplan/99_config.yaml`, if you want to name interface `eth0`, add following lines under `ethernets` line:

```yaml
eth0:
    match:
      macaddress: 08:00:27:fe:d0:ae
    set-name: eth0
```

4. Apply new configuration:
```bash
netplan apply
```
