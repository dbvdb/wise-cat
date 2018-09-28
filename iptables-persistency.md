# HOW TO MAKE IPTABLES RULES PERSISTENT ON UBUNTU 18.04

1) save current rules:

```bash
iptables-save > /etc/iptables/iptables-rules.conf
```

2) make a bash script file in ``` vim /etc/iptables/flush-iptables.sh ```
to flush iptables rules.

3) add this commands to ``` flush-iptables.sh ```:

```bash
iptables -F
iptables -X
iptables -tnat -F
iptables -tnat -X
iptables -tmangle -F
iptables -tmangle -X
iptables 

```
4) write systemd service for iptables, create a file on ```
/etc/systemd/system/iptablesd.service ``` and copy following lines to it:

```bash
[Unit]
Description=Packet Filtering Framework
DefaultDependencies=no
After=systemd-sysctl.service
Before=sysinit.target
[Service]
Type=oneshot
ExecStart=/sbin/iptables-restore /etc/iptables/iptables-rules.conf
ExecReload=/sbin/iptables-restore /etc/iptables/iptables-rules.conf
ExecStop=/etc/iptables/flush-iptables.sh
RemainAfterExit=yes
[Install]
WantedBy=multi-user.target
```

5) then run these commands to run service:

```bash
systemctl daemon-reload
systemctl enable iptablesd.service
systemctl start iptablesd.service

```
