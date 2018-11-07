### How to disable IPv6 permanently

+ First, open `/etc/default/grub` and add line below to it:

```bash
GRUB_CMDLINE_LINUX='ipv6.disable=1'
```
+ Be Happy! you disabled IPv6 successfully!
