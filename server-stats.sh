#!/bin/bash

# Check CPU usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
awk '{print 100 - $1"%"}'
echo -e
echo "TOP 5 processes by CPU usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6 | tail -n 5 |awk '{OFS=", "; print $1, $2, $3, $4, $5}'
echo "-------------------------------------------"

# Check Memory usage
echo "Memory Usage:"
free -h | grep Mem | awk '{print $3 "/" $2}'
echo -e

echo "TOP 5 processes by MEM usage:"
ps -eo pid,cmd,%mem,%cpu --sort=-%mem | head -n 6 | tail -n 5 |awk '{OFS=", "; print $1, $2, $3, $4}'

echo "-------------------------------------------"
# Check Disk usage
echo "Total disk usage"
df -H --total  | grep total  | awk '{ print  $2, $3, $5}'