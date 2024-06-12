# Working with file systems

## How to Fix - File system full
```
# create a dummy file - Create a 1000MB file
dd if=/dev/zero of=/data1/ddfile-1.img bs=1M count=1000

# pre allocate space for a file
fallocate -l 2G /data1/test.img

# identifying file system space issues
df -h
ls -lh
du -sh
du -sh cache

# to identify files taking most space
du -sh *                            # list space usage in the current directory
du -sh -- * | sort -rh              # sroted by size

du -h                               # list space usage for all dirs recursively
du -h . -d 1                        # print only the 1 level dirs in the hierarchy
du -h . -d 2                        # print only the 1 & 2 level dirs in the hierarchy

# to find files & dirs above a certain size
find /var -size +10M -exec du -sh {} \;

# moving files
mv /data/appdata /backup/


# deleteting files
rf -f data.img
rm -rf /var/data

find . -size +1000M -exec du -sh {} \;
find . -size +1000M -exec rm -rf {} \;
```

## Backing up file/file system
```
# Method 1 - you can always use the general file copy commands to backup files
cp /etc/resolv.conf /tmp/
cp -r Pictures /tmp/
cp -pr Pictures /tmp/                       # preserve attributes like file permissions,, ownerships etc.

# Method 2 - using tar
tar -cvf /backups/data_bkp-2.tar .
tar -zcvf /backups/data_bkp-2.tar.gz .                      # can use patters in exclude
tar --exclude='file-9.txt' -zcvf /backups/data_bkp-3.tar.gz .
tar --exclude='file-9.txt' --exclude='file-5.txt' -zcvf /backups/data_bkp-4.tar.gz .

tar -tf /backups/data_bkp-4.tar.gz                  # list files inside the archive
tar -zxvf /backups/data_bkp-4.tar.gz                # extract files to the current location

# Method 3 - using rsync
rsync -r . /backups/app-bkp-1/
rsync -avzh . /backups/app-bkp-2/
rsync -avzh root@192.168.1.151:/data1 /data2        # sync a remote directory to a local directory
rsync -avzh /data1 root@192.168.1.151:/data2        # sync filr from local machine to a remote machine
```

## Finding inode issues
```
df -i
ls -li .                                # view inode numbers

# Note
# If inode count has reached 100% in the file system you will not be allowed to create new files or diretories. You need remove files and make up room for new file just like for disk space.
```

