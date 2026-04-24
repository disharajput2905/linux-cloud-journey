#!/bin/bash

LOGFILE="/home/disharajput/linux-cloud-journey/day07-cronjobs/disk_usage.log"

echo "------ $(date) ------" >> "$LOGFILE"
df -h >> "$LOGFILE"
echo "" >> "$LOGFILE"
