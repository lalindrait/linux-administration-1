## Command  Guide - Basic Linux Commands

### Command : source
Reads and executes commands from a file in current shell environment. Usually a shell script or a file with commands 
```
# Examples
source .bashrc 
```

### Command : echo
Echo a line of text in to the CLI. Can also be used to print enviornrment varibales, insert text in to a file etc.
```
# Examples
# Print text in to the shell
echo "Hello Linux"

# Print enviornrment varibale values
echo $PWD

# Insert text in to a file
echo "Insert text in to a file" > file1.txt

# Remove all the content in a file
echo > file1.txt
```

### Command : cat
Read a file and output it to the CLI
```
# Examples
cat file1.txt
```

### Command : grep
Filter text using patterns/regular expressions
```
# Examples
grep root /etc/passwd
cat /etc/passwd | grep ftp
cat /etc/passwd | grep -i Ftp               # i --> ignore case
cat /etc/passwd | grep ftp -A5              # show 5 lines after the match    
cat /etc/passwd | grep ftp -B5              # show 5 lines before the match    
```

### Command : env
Print enviornrment variables
```
# Examples
env
```

### Command : alias 
Create an alias 
```
# Examples
alias ln="ls -lah"
alias cc='cat /etc/resolv.conf | grep -i name'
unalias ln
```

### Command : history 
Show the command history
```
# Examples
history
history 10
```

### Command : exit
Exit or logout from the shell
```
# Examples
exit

# You can also you CTRL+D to logout from the shell
```

### Command : ssh 
Connect to a remote machine using ssh 
```
# Examples
ssh admin@192.168.1.151
```

## Command  Guide - Find information about the OS

### Command : hostname 
Print the hostname of the system 
```
# Examples
hostname
```

### Command : ip 
Print network interface and ip related information 
```
# Examples
ip address              
ip addr             # short from of ip address
ip a                # short from of ip address
```

### Command : OS distro and version 
Find the distro of the OS and the OS version
```
# Examples
cat /etc/*-release
```

### Command : uname 
Find kernel version
```
# Examples
uname -r            # kernel version
uname -p            # processor type 
uname -i            # hardware platform type
```

### Command : hostname 
Print the hostname of the system 
```
# Examples
hostname
```


## Command  Guide - Find information about the Server

### Find information about the server model
```
dmidecode
dmidecode | grep -A3 '^System Information'
```

### Find information about CPU
There are number of ways to find the cpu information 
```
lscpu                                     
cat /proc/cpuinfo
cat /proc/cpuinfo | grep -i processor
```

### Find information about memory
```
# To find the currently free memory look at the available column not the free column
# Free : Memory is the amount of memory which is currently not used for anything. This number should be small, because memory which is not used is simply wasted.
# Available : Memory is the amount of memory which is available for allocation to a new process or to existing processes.

free -h                     # shows both memory and swap size and free memory
cat /proc/meminfo
```

### Find information about disks & storage 
```
lsblk               # physical disk information
df -h               # file system information
```

### Find information about network
```
nmcli device show
nmcli device status
nmcli connection show
```