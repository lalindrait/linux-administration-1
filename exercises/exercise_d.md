# Exercise D - Monitor performance

You are supposed to write a script in bash to store perf metrics at a given interval

## Requirements
1. script should take 1 arguments - internal (this could be 1 min, 5 mins, 15 mins)
2. You are supposed to capture load average, CPU utilization (not idle but utilization), and available memory
3. You need to store this in a single file with the metric name as follows \
Load Averages : <Load average values> \
CPU Usage : <CPU utilization %> \
Memory (Available) : <Available Mem in MB> \
4. Name of the file should include date & time it was created and the hostname of the machine
5. Files should be stored in a specific location /var - For example /var/perfmetrics
6. Suitable messages should be displayed in the console after each step is completed