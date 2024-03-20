

## Working with the bash shell

In bash how the shell prompt should like is determined by a varibale called PS1\
We can change the PS1 variable and customize it as we want

```
# to view the current PS1 value
set | grep PS1

# Note that PS1 is not actually a environement variable. It is a local variable.
# So you cant view it with "env" command

# to change the prompt temporarily set the PS1 variable
PS1="[\u@\h \T]\$"

$ to make it permanent put it in the .bashrc file
vi .bashrc
PS1="[\u@\h \T]\$"

source .bashrc

# valid characters that can appear in PS1 can be found here
https://www.gnu.org/software/bash/manual/html_node/Controlling-the-Prompt.html

```

## Accessing the documentation and command help

### Command : man
To access man pages - documentation on commands
```
# Examples
man echo

# To access help use --help as an argument after the command
# Examples
ls --help
hostname --help
```


## Commands to learn & practice
```
### Basic Linux Commands
source
cat
man
echo
env
ls
cd
pwd
exit
ssh

### Commands to find information about the system

```



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



### Command : env
Print enviornrment varibales
```
# Examples
env
```

### Command : ls
List files and directories
```
# Examples
ls
ls -l           # print list in long format 
ls -a           # show hiddent files (or dot files)
ls -la          # combining both l and a
ls -lh          # show file size in human readable format   
```

### Command : cd
Change directory
```
# Examples
cd /etc                                     # change directory to /etc - Using absolute path
cd /etc/sysconfig/network-scripts/          # Using the full absolue path
cd projects                                 # change directory to projects - Using relative path
cd ../                                      # go one directory level higher from current directory
cd ../../                                   # go two levels higher from the current directory
cd -                                        # go to the last working directory
cd ~                                        # go to user home directory
```

### Command : pwd
Prints current working directory
```
# Examples
pwd
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