# Security Services

## Managing SELinux
```
# check SELinux context
ps axZ
ls -lZ

# get and set SELinux mode
getenforce

setenforce 0                # eet permissive mode
setenforce Permissive

setenforce 1                # set enforcing mode
setenforce Enforcing

# setting the default linux mode
vi /etc/selinux/config                 # change mode accordingly

# manageing context rules
semanage
```


## Woring with the firewalld
```
# start/stp service
systemctl start firewalld
systemctl stop firewalld

firewall-cmd --get-zones
firewall-cmd --get-active-zones

# open/close ports
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload
firewall-cmd --list-ports

firewall-cmd --permanent --remove-port=80/tcp
firewall-cmd --permanent --remove-port=443/tcp
firewall-cmd --reload
firewall-cmd --list-ports


# open/close service
firewall-cmd --permanent --zone=public --add-service=http
firewall-cmd --permanent --zone=public --add-service=https
firewall-cmd --reload
firewall-cmd --list-services
firewall-cmd --list-ports

firewall-cmd --permanent --zone=public --remove-service=http
firewall-cmd --permanent --zone=public --remove-service=https
firewall-cmd --reload
firewall-cmd --list-services
```
