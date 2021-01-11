#!/bin/bash

#INSTRUCTIONS: Edit the following placeholder command and output filepaths
# For example: cpu_usage_tool > ~/backups/cpuuse/cpu_usage.txt
# The cpu_usage_tool is the command and ~/backups/cpuuse/cpu_usage.txt is the $
# In the above example, the 'cpu_usage_tool' command will output CPU usage inf$
# into a cpu_usage.txt file. 
# Do not forget to use the -h option for free memory, disk usuage, and free di$

# Free memory output to a free_mem.txt file
awk '/Mem:/ {print $4}' <(free -mh) > ~/backups/freemem/free_mem.txt 

# Disk usage output to a disk_usage.txt file
sudo du -sh > ~/backups/diskuse/disk_usage.txt

# List open files to a open_list.txt file
lsof > ~/backups/openlist/open_list.txt

# Free disk space to a free_disk.txt file
df -h > ~/backups/freedisk/free_disk.txt
