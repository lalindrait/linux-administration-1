# Scheduling Jobs

## Scheduling one-off jobs with at
```
systemctl status atd

[root@rocky85-lab-2 ~]# at 20:12
warning: commands will be executed using /bin/sh
at> /root/savedate.sh
at> <EOT>
job 3 at Tue May 28 20:12:00 2024

# use the following to see current at jobs
atq

### some time combinations you can use with at
# now +5min
# teatime tomorrow (teatime is 16:00)
# noon +4 days
# 5pm august 3 2021

```

## Scheduling recurring jobs with cron
```
crontab -h
crontab -l
crontab -e
crontab -r
```

## Other useful commands
```
# Chekcing and testing local email
mail
echo "This is a test" | mail -s "Test" root

```