+ If you like the previous interface naming like `eth0` and `wlan0` you should
    add the following line to your `/etc/default/grub`:

```bash
  GRUB_CMDLINE_LINUX="net.ifnames=0 biosdevname=0
```

+ Notice that if you want to see this naming in recovery mode you should add
    the following line to `/etc/default/grub` too:

```bash
  GRUB_CMDLINE_LINUX_DEFAULT="net.ifnames=0 biosdevname=0"
```
