# Working with Logs


## Viewing & Monitoring Log files
```
# To view logging daemons/services
systemctl --type=service | egrep 'rsyslog|systemd-journald'

# To view log files
cat /var/log/messages
tail /var/log/messages                      # by default only print last 10 lines
tail -f /var/log/messages                   # f - follow
tail -f -n 100 /var/log/messages            # print the last 100 lines while following the log

more /var/log/messages                      # view files page by page. use h for shortcut keys
less /var/log/messages                      # same as more but with more functionality like backward scrolling 
#less sub commands
#spacebar - scroll forward | b - scroll backward | q - quit | [line number]G - goto line

# You can use grep command to filter logs
grep root /etc/passwd
cat /etc/passwd | grep ftp
cat /etc/passwd | grep -i Ftp               # i --> ignore case
cat /etc/passwd | grep ftp -A5              # show 5 lines after the match    
cat /etc/passwd | grep ftp -B5              # show 5 lines before the match 

# Sending log manually to syslog
# The logger command can send messages to the rsyslog service
# It is useful to test any change to the rsyslog service configuration
# The LOCALn facilities are available for any local use and can vary from system to system
logger "Log entry test by MSD"
logger -p local7.notice "Log entry test by MSD"
logger -p local2.crit "Log entry test by MSD"

```

## Interpreting log files
```
# example log entry in /var/log/messages
May 24 18:57:51 rocky85-lab-2 systemd[1]: Starting The nginx HTTP and reverse proxy server...
```

## Viewing & Monitoring journeld logs
```
journalctl
journalctl -n 20
journalctl -f
journalctl -p crit
```

## dmesg
```
dmesg
dmesg -T                    # use human readable time format
dmesg --follow
```