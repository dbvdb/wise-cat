# ALL YOU NEED TO WORK WITH VIRTUALBOX

+ to list all vms and running vms:
```bash
VBoxManage list vms
VBoxManage list runningvms
```

+ shutdown, reset a vm:
```bash
VBoxManage controlvm <uuid|name> poweroff
VBoxManage controlvm <uuid|name> reset
```

+ to start a vm in CLI and GUI:
```bash
VBoxManage startvm <uuid|name> --type headless
VBoxManage startvm <uuid|name>
```

+ to get back up from vms:
```bash
VBoxManage export <uuid|name> -o <backup-name>.ova
```

+ to import an .ova machine:
```bash
VBoxManage import <backup-name>.ova
```
