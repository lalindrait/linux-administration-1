## Managing File Permissions

### Command : ps
List processes
```
# Examples
ps                             # processes in the current terminal session
ps -x                          # list processes owned by the user running the command
ps -e                          # show all processes in the system (standard syntax)
ps -ef                         # show all processes in the system in full format (standard syntax)
ps aux                         # show all processes in the system in full format - same as ps -ef (BSD syntax)
ps -u root                     # show porcesses running as a specific user
ps -C sshd                     # list processes for the command specified
ps -ef --forest                # view process tree

If there is one single command that you need to remember that would be the following
ps -ef 
```

### Command : kill
Used to kill processes and send signals to processes
```
# Examples
kill 11684
kill -SIGTERM 11853
kill -9 11999
kill -SIGKILL 12297
```

### Command : killall
Used to kill multiple processes based on their command name
```
# Examples
killall bash
```

### Command : pkill
Used to kill multiple processes which matches selection criteria
```
# Examples
pkill -U mit                # kill all processes by user 
```