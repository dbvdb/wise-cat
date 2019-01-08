+ To add universe, main, multiverse or restricted use the following command
```bash
sudo apt add-apt-repository universe | main | multiverse | restricted 
```

+ An older way to do that for older distributions is:
```bash
sudo apt add-apt-repository "http://archive.ubuntu.com/ubuntu $(lsb_release
-sc) main universe restricted multiverse"
```

+ To add also partner repository:
```bash
sudo add-apt-repository "http://archive.canonical.com/ubuntu $(lsb_release -sc)
partner"
```

NOTICE THAT: To update the package list runt the following command:
```bash
sudo apt update
```
