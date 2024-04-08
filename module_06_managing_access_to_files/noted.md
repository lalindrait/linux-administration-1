## Managing File Permissions

### Command : chown
Change user and/or group ownerships
Note : In Linux only root can use chown for changing ownership of a file, but any user can change the group to another group he belongs to.
```
# Examples
chown mit file_mit.txt                  change only the user anf group statys the same
chown mit:mit file_mit.txt              change both user and group
```

### Command :  chgrp
Change group ownerships
Note : In Linux only root can use chown for changing ownership of a file, but any user can change the group to another group he belongs to.
```
# Examples
chgrp mit file_mit.txt                  
```

### Command : chmod
Change user and/or group ownerships
Note : In Linux only root can use chown for changing ownership of a file, but any user can change the group to another group he belongs to.
```
# Examples
# using symbolic mode
chmod u+x file_mit.txt
chmod u-x file_mit.txt
chmod g+x file_mit.txt
chmod o+w file_mit.txt

#using numeric mode
chmod 700 file_mit.txt
chmod 666 file_mit.txt
chmod 744 file_mit.txt
```

### Command : chown
Control what file permissions are set for newly created files
```
# Examples
umask
umask 0022
```