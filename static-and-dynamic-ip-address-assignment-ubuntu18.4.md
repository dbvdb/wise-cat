- Create `/etc/netplan/99_config.yaml`

###### DHCP

- Set a dynamic ip address with following assumption:
  - interface name: `enp0s3`
  
```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      dhcp4: true
```

###### Static
- Set a static ip address with these assumptions:
  - interface name: `enp0s3`
  - ip address: `192.168.1.10`
  - gateway: `192.168.1.7`
  -  nameservers: `8.8.8.8` and `8.8.4.4`

```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      addresses: [192.168.1.10/24]
      dhcp4: false
      gateway4: 192.168.1.7
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]
```

- Before applying the change, check whether the configuration are valid or not.
```bash
netplan try
```

- Configuration can be applied after:
```bash
netplan apply
```
