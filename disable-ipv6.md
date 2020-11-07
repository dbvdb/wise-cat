# Disable IPv6

## Disable ipv6 in multi user mode

+ First, open `/etc/default/grub` and add line below to it:
```bash
GRUB_CMDLINE_LINUX='ipv6.disable=1'
```
+ Second, you should update grub by:
```bash
grub-mkconfig -o /boot/grub/grub.cfg
```
+ Be Happy! you disabled IPv6 successfully!

## Disable ipv6 in safe mode

+ First, open `/etc/default/grub` and add line below to it:
+ Notice that if you want to disable IPv6 in safe mode you should add the
    following line to your `/etc/default/grub`:

```bash
GRUB_CMDLINE_LINUX_DEFAULT='ipv6.disable=1'
```

## Disable ipv6 realtime
+ Enter the following command:
```bash
sysctl net.ipv6.conf.all.disable_ipv6=1
```
