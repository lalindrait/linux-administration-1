## Linux networking - View information

### Command : ifconfig 
Print network interface and ip related information 
```
ifconfig
ifconfig -a
```

### Command : ip 
Print network interface and ip related information 
```
### view ip addresses
ip address              
ip addr             # short from of ip address
ip a                # short from of ip address

### view network interfaces/links
ip link show

### view routing information
ip route
```

### Command : nmcli 
NetworkManager cli tool - Network interface and connection info
```
nmcli dev
nmcli dev status

nmcli con
nmcli con show
nmcli con show --active
```

### Command : ethtool 
Show info about physical network connection info
```
ethtool enp0s8
```

### Command : route
View and modify kernel routing table
```
route -n                    
```


### Command : ping 
Ping a IPV4 endpoint to see if its active 
```
ping 192.168.1.1
ping -c4 192.168.1.1
ping6 fe80::a00:27ff:fe29:2097
```

### Command : tracepath/traceroute 
Trace the routing path
```
tracepath 8.8.8.8
tracepath access.redhat.com
```

### Command : netstat
Show various network related info
```
netstat -at                       # show info about TCP connections
netstat -au                       # show info about UDP connections

netstat -lt                       # show info about TCP sockets in listening state
netstat -ntlp                     # show info about TCP sockets in listening state - with PID and without DNS resolution - This is faster

netstat -i                        # show network stats
```

### Command : ss
View info about scockets
```
ss -ta                            # show all tcp sockets                 
```


## Linux networking - Configure networking

### Task : View network devices and connection info
```
nmcli dev
nmcli con 
ip link
ip addr
```

### Task : Add a network interface to the system - using nmcli
```
# Add anetwork connection - Use any one of the following
nmcli con add con-name enp0s9-200 type ethernet ifname enp0s9 ipv4.method auto
nmcli con add con-name enp0s9-200 type ethernet ifname enp0s9 ip4 192.168.56.200/24 gw4 192.168.56.1
nmcli con add con-name enp0s9-200 type ethernet ifname enp0s9 ip6 2001:db8:0:1::c000:207/64 gw6 2001:db8:0:1::1 ip4 192.0.2.7/24 gw4 192.0.2.1

# Bring up the connection
nmcli con up enp0s9-200

# View IP config info for a specific interface
nmcli con show enp0s9-200 | grep -i ipv4.method             # Manual IP and DHCP
nmcli con show enp0s9-200 | grep -i ipv4.addr
nmcli con show enp0s9-200 | grep -i ipv4.gateway


### Other useful commands
###########################

# Bring up/down the connection
nmcli conn up enp0s9
nmcli conn down enp0s9              # bring down the connections. NetworkManager may bring it up agian automatically.

# Bring up/down interface at the link level
ip link set dev enp0s9 down
ip link set dev enp0s9 up

# Connect/disconnect interface physically
nmcli dev dis enp0s9                # disconnect the interface = deactivate the network physcailly
nmcli dev con enp0s9                # connect the interface = activate the network interface physcailly

# Delete a connection
nmcli con del enp0s9                # delete a connection
```

### Task : Modify network connection settings manually 
```
cd /etc/sysconfig/network-scripts/
vi ifcfg-enp0s9-200

nmcli con reload
nmcli con down enp0s9-200
nmcli con up enp0s9-200

# you can also do the following to make the changes take effect
nmcli con reload
nmcli device reapply enp0s9
```

### Task : Remove device from a NetworkManager Control
```
# To set it temporarily
nmcli device set enp1s0 managed no

# To make it permanent add following to the config file
[device-enp1s0-unmanage]
match-device=interface-name:enp1s0
managed=0

#restart the service
systemctl reload NetworkManager
```


## Linux networking - Configure hostname and DNS

### Task : Change the hostname
```
hostname

hostnamectl --help
hostnamectl set-hostname rocky85-lab-2
cat /etc/hostname

hostname status
```

### Task : Configure DNS
```
cat /etc/nsswitch.conf    
cat /etc/hosts

getent hosts rocky85-lab-1

# Change DNS - using files
#########################################
# Disable NetworkManager Updating /etc/resolve.conf
vi /etc/NetworkManager/NetworkManager.conf
dns=none

vi /etc/resolv.conf
nameserver 4.2.2.2

# Change DNS - Using nmcli
#########################################
# The default behavior of nmcli con mod ID ipv4.dns IP is to replace any previous DNS settings with the new IP list provided. 
# A + or - symbol in front of the ipv4.dns argument adds or removes an individual entry

nmcli con show enp0s8 | grep -i ipv4.dns
cat /etc/sysconfig/network-scripts/ifcfg-enp0s8
nmcli con mod enp0s8 ipv4.dns 8.8.8.8
nmcli con mod enp0s8 +ipv4.dns 8.8.4.4              # add a secodary DNS

nmcli connection reload
systemctl restart NetworkManager


# DHCP automatically rewrites the /etc/resolv.conf file as interfaces are started unless you specify PEERDNS=no
# Disable PEERDNS - If PEERDNS is set to no then the file /etc/resolv.conf is not modified
nmcli con mod enp0s8 ipv4.ignore-auto-dns yes

# Checking DNS resolution
host www.google.com
nslookup www.google.com
dig www.google.com
```