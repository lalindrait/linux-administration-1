# Monitoring Performance

### Command summary
```
CPU - uptime, vmstat, top, mpstat
MEMORY - free, top
DISK - iostat, sar
NETWORK - ping, sar
```


## Monitoring CPU
```
# CPU Load averages - uptime

# Find average CPU load/usage
uptime                      # 1 min, 5 min, 15 min cpu load averages
cat /proc/loadavg           # same as above

# Find real time cpu utilization
vmstat 1                    # execute every 1 second 
vmstat 1 5                  # execute every q second for 5 iterations

# Find process-wsie cpu utilization 
# top command output is refreshed every 3 seconds to change this press "d" and enter time in seconds
top
top -n 3                            # stop after 3 interations
top -n 3 -b > /tmp/top.out          # redirect the output to a file

shift + p   : Sort the processes by CPU usage
shift + m   : Sort the processes by memory (%MEM) usage


mpstat 1
mpstat -P ALL 1                     # CPU wise stats

###################### How to intepret vmstat output ########################
Procs
    r: The number of processes waiting for run time.
    b: The number of processes in uninterruptible sleep.
Swap
    si: Amount of memory swapped in from disk (/s).
    so: Amount of memory swapped to disk (/s).
IO
    bi: Blocks received from a block device (blocks/s).
    bo: Blocks sent to a block device (blocks/s).
CPU
    These are percentages of total CPU time.
    us: Time spent running non-kernel code. (user time, including nice time)
    sy: Time spent running kernel code. (system time)
    id: Time spent idle. 
```


## Monitoring Memory
```
free -m
top

###################### How to intepret free output ########################
total	        Total installed memory.
used	        Memory currently in use (excluding buffers and cache).
free	        Unused memory.
shared	        Memory used by tmpfs and shared between processes.
buff/cache	    The sum of buffer and cache memory, which are used by the operating system to speed up processes.
available	    An estimation of how much memory is available for starting new applications, without swapping.

# Look for  "available" value as it displays how much memory is still available for running new applications.
```


## Monitoring Disk IO
```
### If the command is not available use the folllowing command to install the rpm
### dnf install sysstat

iostat 1                           # repeat command every 1 second
iostat -x 1                        # print extended output
iostat -p sda 1                    # print for a specific device and paritions

sar -d 1
```


## Monitoring Network
```
### ping is generally used to check connectivity but the time field can be used to chec for latencies
### time - RTT (Round Trip Time) for the ping request
ping -c4 192.168.50.10
ping -c4 4.2.2.2


### if sar command is not availble install it using the following commans
### dnf install sysstat
sar -n DEV 1                        # monitor interface every 1 second
```