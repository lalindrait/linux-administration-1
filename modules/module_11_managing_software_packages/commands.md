## Managing software packages

### Command : rpm
Manage RPM software packages 
```
### View info about RPM packages
rpm -qa                             # list all installed packages
rpm -qa | grep nginx
rpm -qf /usr/sbin/ping              # show what rpm provides the file
rpm -q nfs-utils                    # show the version of the packages installed
rpm -qi nfs-utils                   # show detailed info about the packages
rpm -ql nfs-utils                   # list all files installed by the package
```


## Managing software packages

### Task : Working with RPMs - Using rpm command
```
### Downloading RPM packages
# You can download the nginx rpm package using the below command
# nginx rhel 8 repo : https://nginx.org/packages/rhel/8/x86_64/RPMS/
curl -O https://nginx.org/packages/rhel/8/x86_64/RPMS/nginx-1.26.0-1.el8.ngx.x86_64.rpm

# Install the package
rpm -ivh nginx-1.24.0-1.el8.ngx.x86_64.rpm                  # i - install | v - verify | h - progress with hash marks

# Upgrade the package
rpm -Uvh nginx-1.26.0-1.el8.ngx.x86_64.rpm

# Uninstall the package
rpm -e nginx
```

### Task : Using YUM
```
yum list                        # list all installed and available packages
yum list installed              # list all installed packages

yum info nginx
yum provides /usr/sbin/ping     # what package provides the file

yum search httpd                # lists packages by keywords found in the name and summary fields only
yum search all httpd            # lists packages by keywords found in the name and summary and description fields

yum install httpd
yum install -y httpd
yum update httpd
yum remove httpd

yum group list
yum group info "Development Tools"
yum group install "Development Tools"

yum history
yum history undo 5

yum repolist
```

### Task : Using DNF
```
dnf list
dnf list installed

dnf info nginx
dnf provides /usr/sbin/ping

dnf search httpd

dnf install httpd
dnf upgrade httpd
dnf remove httpd

dnf grouplist
dnf group info "Development Tools"
dnf group install "Development Tools"

dnf history

dnf repolist
```
