## Working with the file system

### Command : ls
List files and directories
```
# Examples
ls
ls -l           # print list in long format 
ls -a           # show hiddent files (or dot files)
ls -la          # combining both l and a
ls -lh          # show file size in human readable format   
ls -li          # shows i node numbers
```

### Command : cd
Change directory
```
# Following symbols are useful
.           : current directory
..          : directory one level above
~           : home dir of the user
-           : last working dir

# Examples
cd /etc                                     # change directory to /etc - Using absolute path
cd /etc/sysconfig/network-scripts/          # Using the full absolue path
cd projects                                 # change directory to projects - Using relative path
cd ../                                      # go one directory level higher from current directory
cd ../../                                   # go two levels higher from the current directory
cd -                                        # go to the last working directory
cd ~                                        # go to user home directory
cd .                                        # go to current directory. Means no change in path                                 
```

### Command : pwd
Prints current working directory
```
# Examples
pwd
```

### Command : mkdir
Creates a directoty in the file system
```
# Examples
mkdir dir1
mkdir dir1/mst                              # create directory using relative path
mkdir /tmp/mst                              # create directory using absolute path
mkdir -p /tmp/mit/mst/devops
```

### Command : rm
removes a directory in the file system
```
# Examples
rm file1.txt    
rm -r dir1                                  # removes a dir and contents          
rm -rf dir1                                 # removes a dir and contents without prompting for confirmation
rmdir dir1
```

### Command : cp
Copy a file
```
# Examples
cp /etc/resolv.conf /tmp/
cp -r Pictures /tmp/
cp -pr Pictures /tmp/                       # preserve attributes like file permissions,, ownerships etc.
```

### Command : mv
Move a file or dir
```
# Examples
mv Pictures /tmp/
```

### Command : ln
Create a link
```
# Examples
ln hello.txt hello-linux.txt                # creates a hard link
ln -s  hello.txt  hello-soft.txt            # create a soft link
```

