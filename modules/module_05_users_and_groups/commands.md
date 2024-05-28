## Managing Users and Groups

### Command : id
Show user and group details
```
# Examples
id              # show details of the currently logged in user
id gdm          # for a specific user
```

### Command : cat /etc/passwd
List all users in the system
```
# Examples
cat /etc/passwd | grep mit
```

### Command : useradd
Add a new user to the system
-d - Changes the user's home directory.
-s -  Changes the user's default shell.
-e - Sets an account expiry date.
-c - Adds a comment to the user's entry.
-u - Changes the user's UID (User ID).
-aG - Adds the user to supplementary groups without removing existing group memberships.
```
# Examples
useradd mit
useradd -u 2001 -d /home/mit -s /bin/bash mit
```

### Command : passwd
Assign a password to a user
```
# Examples
passwd              # change current user password
passwd mit          # change or assign a password to mit user
```

### Command : userdel
Add a new user to the system
```
# Examples
userdel mit             # this will not delete the user home directory
userdel -r mit          # remove user home directory
```

### Command : usermod
Change user attributes
```
# Examples
usermod -s /bin/sh mit
usermod -aG sshd mit              # add user to a secodary group called ssh  
gpasswd -d mit sshd               # remove the secondary group
```

### Command : cat /etc/group
List all groups in the system
```
# Examples
cat /etc/group
```

### Command : groupadd
Add a group
```
# Examples
groupadd devops
```

### Command : groupdel
Remove a group
```
# Examples
groupdel devops
```

### Command : groupdmod
Change group attributes
```
# Examples
groupmod -g 3000 devops             # change GID
groupmod -n cloud devops            # change group name
```

## Switching users

### Command : su
Switch user
```
# Examples
su mit                              # switch user to mit in to a non-login shell
su - mit                            # switch user to mit in to a login shell
su - root                           # switch user to root to get admin access 
su -                                # switch user to root to get admin access 

# On some Linux distributions like Ubuntu, the root user account is disabled by default for security reasons. 
# This means that no password is set for root, and you cannot use su to switch to root. 
# You need to use sudo command to login as root in these systems.
# sudo access to issue su - must be granted.

sudo su -                       
```

### Command : sudo
Run command as root
```
# Examples
sudo cat /etc/shadow
sudo poweroff 
sudo su -                 
```

## Misc Commands

### Task : check whether a shell is login or non-login
```
# if -bash --> login shell
# if bash  --> non-login shell
echo $0 
```












