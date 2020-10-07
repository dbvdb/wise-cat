# HOW TO MAKE IPTABLES RULES PERSISTENT ON UBUNTU 18.04

1. Save all of current rules:

```bash
iptables-save > /etc/iptables/iptables-rules.conf
```

2. Make a bash script file in ``` vim /etc/iptables/flush-iptables.sh ```
to flush iptables rules.

3. Add the following commands to ```/etc/iptables/flush-iptables.sh ```:

```bash
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables -X
iptables -tnat -F
iptables -tnat -X
iptables -tmangle -F
iptables -tmangle -X
iptables -traw -F
iptables -traw -X
```

4. Make it executable:
```bash
chmod +x /etc/iptables/flush-iptables.sh
```

5. Write a systemd service for iptables rules, create a file on ```
/etc/systemd/system/iptablesd.service ``` and copy the following lines to it:

```bash
[Unit]
Description=Iptables Persistency Framework
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

6. Then run these commands to run service:

```bash
systemctl daemon-reload
systemctl enable iptablesd.service
systemctl start iptablesd.service
```
