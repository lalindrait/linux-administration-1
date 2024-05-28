## Managing storage

### Command : df
View file systems
```
df
df -h

# Note : The tmpfs and devtmpfs devices are file systems in system memory. All files written into tmpfs or devtmpfs disappear after system reboot.
```

### Command : du
View file system usage
```
du -sh .                    #show total size of the current directory
du -sh /var
du -h /var                  #show file size of all files and directories           
```

### Command : lsblk
List block devices in the system - Both disks and partitions
```
lsblk
lsblk -fp                   #show full path with UUID               

Note : sr0 represents the DVD/CD drive attached to the system
```

### Command : fdisk
Show disk and partition information - Old command used in most Unix/Linux systems \
Can also be used to paritition disks 
```
fdisk -l
```

### Command : parted
Show disk and partition information \
Can also be used to paritition disks 
```
parted
    print
    quit

parted /dev/sda print
```


## Managing storage - Working with Storage Volumes

### Task : Creating a partition and mounting a file system
```
parted /dev/sdb

### Label the disk
# Disk labeling is the act of specify the type of the disk and writing the partition table
# Partition Table: msdos --> MBR 
# Partition Table: gpt --> GPT

(parted) print
(parted) mklabel msdos

### Create partition - Using the interactive mode 
# With parted, you cannot directly provide the size of your partition
(parted) mkpart
Partition type?  primary/extended? primary
File system type?  [ext2]? xfs
Start? 1MB
End? 4000MB

### Create partition - Using the command mode 
(parted) mkpart primary xfs 4000MB 6000MB

(parted) print
(parted) quit


### Create a file system and mount it
mkfs -t xfs /dev/sdb1
mkdir /data1
mount /dev/sdb1 /data1


### Make mounting permanent
lsblk -fp                   # find the partition UUID first
vi /etc/fstab
UUID=66a2b0f1-5ca1-4ac4-8d86-4d0a232deabf /data1                   xfs     defaults        0 0

# Test
umount /data1
mount -a
# Can also use the following command to apply new config 
systemctl daemon-reload


# You can also do partitoning as a single command
parted /dev/sdb mkpart primary xfs 6000MB 8590MB
parted /dev/sdb print

# New parition should automaically appear in the device path - For example /dev/sdb1
# If you can see the new partition use the following command
# This command will scan and create the new devide files in /dev
udevadm settle
```


### Task : Remove filesystems and delete partitions
```
### Umount the file systems and remove it from fstab
umount /data1
vi /etc/fstab

parted /dev/sdb
(parted) print
(parted) rm 1
```

### Task : Creating GPT partitions
```
parted /dev/sdb
(parted) mklabel gpt

(parted) mkpart
Partition name?  []? data1
File system type?  [ext2]? xfs
Start? 1MB
End? 2000MB
(parted) print
```

### Task : Misc commands
```
# To find supported file systems in parted
# Note : parted does not create the file system on the partition; it is only an indication of the partition type.
parted /dev/sdb help mkpart
```






