#!/bin/bash
logfile=health.log
echo "======================================= sytem health report ===============================" >> $logfile
echo "date : $(date)" >> $logfile

echo "--------------------------------------------- CPU load -----------------------------------" >> $logfile
uptime >> $logfile


echo "---------------------------------------- Memory Usage ------------------------------------" >> $logfile
free -h >> $logfile


echo "---------------------------------------- Disk Usage---------------------------------------" >> $logfile
df -h >> $logfile


echo "report saved to $logfile"
