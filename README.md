# Debian Base Package Installer

###What should we do with the script?
This script installs your packages and programs on debian bases linux distro.

###Usage
#####Step 1:
>[Download](https://github.com/nimaebrazi/DebianBaseInstaller) zip file from github

or clone from github:
```bash
git clone https://github.com/nimaebrazi/DebianBaseInstaller.git
```
#####Step 2:
Add your package(s) to `config/programs.list`. Every package must be in one line.
Sample: 
````
apache2 
apache2-doc
mysql-server 
libapache2-mod-auth-mysql
php5
.
.
.
```

#####Step 3:
change directory to `src`:
```
cd src/
```
>Note: All 
**_.sh_** 
files must be executable:
```
sudo chmod +x *.sh
```

#####Step 4:
Just run `main.sh` in `src` directory
```
bash main.sh
```
or

```
./main.sh
```

###License
####[MIT License] (https://github.com/nimaebrazi/DebianBaseInstaller/blob/master/LICENSE.md)
