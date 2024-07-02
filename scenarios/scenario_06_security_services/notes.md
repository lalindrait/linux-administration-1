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


## Working with firewalld
```
# start/stp service
systemctl start firewalld
systemctl stop firewalld


# view firewalld zones
firewall-cmd --get-zones
firewall-cmd --get-active-zones

firewall-cmd --list-all
firewall-cmd --zone=external --list-all
firewall-cmd --list-all-zones

firewall-cmd --set-default=internal
firewall-cmd --zone=internal --permanent --add-interface=enp0s8
firewall-cmd --reload


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

## Working with iptables
```
# list rules
iptables -L
iptables -L -v

# how to create a rule 
iptables -A <chain> -i <interface> -p <protocol (tcp/udp) > -s <source> --dport <port no.>  -j <target>


# allow traffic on localhost
iptables -A INPUT -i lo -j ACCEPT

# enable Connections on HTTP, SSH, and SSL Port
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT


# accept/drop packets from 192.168.1.3
iptables -A INPUT -s 192.168.1.3 -j ACCEPT
iptables -A INPUT -s 192.168.1.3 -j DROP

# remove all rules (-F -> flush)
iptables -F

iptables -L --line-numbers
iptables -D INPUT 3


# save and restore rules
iptables-save > /etc/iptables/rules.v4
iptables-restore < /etc/iptables/rules.v4
```