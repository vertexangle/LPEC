#!/bin/bash
echo $"
==============================================================
 _     _                   ______     _         _____    _____
| |   (_)                  | ___ \   (_)       |  ___|  /  __ \

| |    _ _ __  _   ___  __ | |_/ / __ ___   __ | |__ ___| /  \/
| |   | | '_ \| | | \ \/ / |  __/ '__| \ \ / / |  __/ __| |
| |___| | | | | |_| |>  <  | |  | |  | |\ V /  | |__\__ \ \__/\

\_____/_|_| |_|\__,_/_/\_\ \_|  |_|  |_| \_/   \____/___/\____/
===============================================================
      						       By Sp00ky
"
echo "=============Checking Bash History=============="
history && cat ~/.bash_history
echo "===================Done========================="
echo "============Checking Kernel version============"
uname -a
echo "===================Done========================="
echo "===============Checking current user============"
id
echo "===================Done========================="
echo "Checking which files current user is allowed to run as a privileged user..."
echo "" >> sudo -l;
echo "===========Checking for SUID Binaries==========="
find / -perm -u=s -type f 2>/dev/null
echo "===================Done========================="
echo "Checking TCP/UDP connections..."
netstat -t -u -n -a -p
echo "===================Done========================="
echo "Checking Interfaces/IP Addresses on device"
ifconfig -a
echo "===================Done========================="
echo "Checking for other partitions that may be mountable"
fdisk -l
echo "===================Done========================="
echo "Checking for files in /var/www... Subdomains with Virtual Host Routing may be interesting to look at..."
echo "Keep an eye out for any database connection files, ex. Wordpress Config..."
ls -la /var/www/
echo "===================Done========================="
echo "======Checking contents of /etc/passwd=========="
awk -F: '{ print $1 }' /etc/passwd
echo "===================Done========================="
echo "======Checking if /etc/shadow is writeable======"
cat /etc/shadow
echo "===================Done========================="
echo "Checking if /etc/shadow.bak and /etc/passwd.bak exist"
file /etc/shadow.bak && file /etc/passwd.bak
echo "===================Done========================="
echo "==============Checking /etc/hosts==============="
cat /etc/hosts
echo "===================Done========================="
echo "=======Checking /mnt/ and /tmp/ directory======="
ls -la /mnt/ && ls -la /tmp/
echo "===================Done========================="
echo "============Checking Cronjob...================="
crontab -l
echo "===================Done========================="
echo "========Checking for .dockernev================="
file /.dockerenv
echo "===================Done========================="
echo "=========Checking Contents of .ssh in==========="
ls -la ~/.ssh
echo "===================Done========================="
echo "========Checking contents of home dir==========="
ls -la ~/
echo "===================Done========================="
echo "===========Checking running proccesses=========="
ps aux
echo "===================Done========================="
echo "Happy Hacking! I take no responsibility for what you do with this script"
