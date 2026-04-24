#!/bin/bash
LOGFILE="/home/disharajput/linux-cloud-journey/day07-cronjobs/system_info.log"
echo "--------------$(date)---------------" >> $LOGFILE
uptime >> $LOGFILE
free -m >> $LOGFILE


