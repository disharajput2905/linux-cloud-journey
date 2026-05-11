#!/bin/bash
#set -euo pipefail
#------------------------------------------------------------
# Variables
#------------------------------------------------------------
source=/home/disharajput/linux-cloud-journey
dest=/home/disharajput/backups/linux-cloud-journey
logfile=/home/disharajput/backups/backup.log
backup_name="linux-cloud-journey_$date.tar.gz"
#retention_days=30

#-----------------------------------------------------------
#log function
#-----------------------------------------------------------
log() {
echo "$(date '+%Y-%m-%d %H:%M:%S') - $1 " >> $logfile
}

#-----------------------------------------------------------
#make directories
#-----------------------------------------------------------
mkdir -p "$dest"
mkdir -p "$(dirname "$logfile")"
log "================= Backup Started =================="
echo "================= Backup Started =================="
#-----------------------------------------------------------
#backup
#----------------------------------------------------------
if tar -czf "$dest/$backup_name" \
       --exclude="$source/project-backup-script" \
       "$source" > /dev/null 2>&1
then
      log "Backup Successfull: $backup_name"
      echo "Backup Successfull: $backup_name"
else
    echo "Backup failed!"
     log "Backup failed!"
      exit 1
fi

#---------------------------------------------------------
# delete old backups
#---------------------------------------------------------
#find $dest -type f -name "*.tar.gz" -mtime +$retention_days -exec rm -f {} \;
#log "old backups deleted"

echo "================= Backup Completed =================="
log "================= Backup Completed =================="

