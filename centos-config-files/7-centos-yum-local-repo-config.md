### Local yum repository on Centos 7

+ Create a file in `/etc/yum/yum.repo.d/`:
```bash
[repository-name]
name=repository name
baseurl=/path/to/url
gpgcheck=0
enabled=1
```

+ Update the the repositories with:
```bash
yum update
```

+ List yum repository list which are enabled:
```bash
yum repolist enabled
```
