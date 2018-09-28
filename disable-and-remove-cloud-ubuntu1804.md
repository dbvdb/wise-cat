# How to disable and remove cloud services from ubuntu 18.04

## Instructions to disable and remove cloud service on ubuntu 18.04

###Cloud services are enable by default on ubuntu 18.04 but if you are not in the
###cloud, it wastes machine's resources. follow these steps to disable it:

1- Reconfigure the cloud-init service, then deselect all the options:
```bash
dpkg-reconfigure cloud-init

```

2- Remove cloud-init:
```bash
apt-get --purge cloud-init
```
3- List the services which depend on network being online:
```bash
sudo systemctl show -p WantedBy network-online.target
```
4- disable the services and remove the open-iscsi package:
```bash
systemctl disable <service name>
apt remove open-iscsi
```
5- Reboot the machine:
```bash
shutdown --reboot now
```
