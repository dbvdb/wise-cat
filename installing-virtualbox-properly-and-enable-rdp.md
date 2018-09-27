#### This document describes how to install virtual box and its extension pack to enable rdp. notice that don't install virtualbox from repositry, it may cause some problems.
1- First, delete the virtualbox (if it is installed already):
###### DEBIAN
```bash
apt-get remove --purge virtualbox
```
###### REDHAT
```bash
yum remove virtualbox
```
2- Open the following link on your browser:
`https://www.virtualbox.org/wiki/Downloads`

3- Download `virtualbox` which is compatible with your system.

4- Download `virtualbox extension pack`

5- Install `virtualbox`:
###### DEBIAN
```bash
dpkg -i <virtualbox package name>
```
###### REDHAT
```bash
rpm -ivh < virtualbox package name>
```
6- Install `virtualbox extension pack` with:
```bash
sudo VBoxManage extpack install --replace
Oracle_VM_VirtualBox_Extension_Pack-${LatestVirtualBoxVersion}.vbox-extpack
```

7- To verify that it has been installed properly, run the following command:
```bash
VBoxManage list extpacks
```
8- Enjoy it!
