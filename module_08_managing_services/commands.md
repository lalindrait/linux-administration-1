## managing services

### Command : systemctl
List processes
```
# Examples
systemctl                                           # view all the units in the system
systemctl list-units                                # same as above

systemctl --type=service                            # view only the services and in actice state
systemctl --type=service --all                      # view all services irrespective of state it is in
systemctl --type=service --state=running

### ===============
### Units states
LOAD - Whether systemd properly parsed the unit's configuration and loaded the unit into memory.
ACTIVE - The high-level activation state of the unit. This information indicates whether the unit has started successfully or not.
SUB - The low-level activation state of the unit. This information indicates more detailed information about the unit. The information varies based on unit type, state, and how the unit is executed
### ===============

systemctl list-unit-files                           # list unit files

systemctl status chronyd
systemctl is-active chronyd

systemctl stop chronyd
systemctl start chronyd
systemctl restart chronyd

# Some services have the ability to reload their configuration files without requiring a restart.
systemctl reload chronyd
systemctl reload-or-restart chronyd


systemctl is-enabled chronyd
systemctl disable chronyd
systemctl enable chronyd

# Change system run -level
systemctl get-default
systemctl --type=target
systemctl list-units --type=target --all
systemctl set-default multi-user.target

# To switch to a different run-level - No reboot required
systemctl isolate graphical.target
systemctl isolate multi-user.target

#Masking a service prevents an administrator from accidentally starting a service that conflicts with others
systemctl mask chronyd
systemctl list-unit-files | grep chronyd
systemctl unmask chronyd

# Some services require that other services be running first, creating dependencies on the other services.
systemctl list-dependencies chronyd
```

