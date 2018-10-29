### How to disable IPv6 permanently

+ First, open `/etc/default/grub` and add line below to
    `GRUB_CMDLINE_LINUX=\'ipv6.disable=1\'`
