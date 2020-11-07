# APT package manager

1. To update repositories:
```bash
apt update
```

2. To upgrade all packages:
```bash
apt upgrade
```

3. To search for a package:
```bash
apt search <pkg_name>
```

4. To remove cache:
```bash
apt autoclean
```

5. To remove a package:
```bash
apt remove <pkg_name>
```

6. To remove a package with all configuration files:
```bash
apt purge <pkg_name>
```

7. To show package information:
```bash
apt show <pkg_name>
```

8. To show package dependencies:
```bash
apt depends <pkg_name>
```

9. To check if a package installed or which repository it is belong to:
```bash
apt policy <pkg_name>
```


