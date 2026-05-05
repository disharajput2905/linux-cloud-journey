#!/bin/bash
#==================================================================
# log archiver script
# author : Disha Rajput
#==================================================================
#set -eu
# setting values
source=./test_logs
archive=./test_logs/archive
days=7
delete=30
logfile=./archiver.log

#-----------------------------------------------------------------
#logging function
#-----------------------------------------------------------------
log() {
echo "$(date '+%y-%m-%d %H:%M:%S') - $1" | tee -a $logfile
}

#----------------------------------------------------------------
#error handling function
#---------------------------------------------------------------
exit() {
log "ERROR: $1"
exit 1
}

#-----------------------------------------------------------------
#check if source directory exists
#-----------------------------------------------------------------
check_dir() {
  if [ ! -d $source ]; then
     exit "source directory does not exist."
  fi
}
#-----------------------------------------------------------------
#create archive directory
#-----------------------------------------------------------------
create_dir() {
if [ ! -d $archive ]; then
    mkdir -p $archive || exit "failed to create archive directory"
    log "archive directory created"
fi
}

#-----------------------------------------------------------------
# archive old logs
#-----------------------------------------------------------------
archive_logs() {
log "archiving logs older then $days days...."
   find "$source" -type f -name "*.log" -mtime +$days 2>/dev/null | while read file
do 
     if gzip $file; then
      if mv $file.gz "$archive/";
         then 
               log "arcvhived: $(basename "$file")"
         else
            exit "failed to move $(basename "$file")"
      fi 
          else
                exit "compression failed for $(basename "$file")"
       fi
done
}

#-----------------------------------------------------------------
#delete old archives
#------------------------------------------------------------------
delete_archive() {
log "deleting archives older than $delete days...."
  find "$archive" -type f -name "*.gz" -mtime +$delete 2>/dev/null | while read file
do
   if rm -f $file; then
     log "deleted old archives: $(basename "$file")"
     else
        exit "failed to delete $(basename "$file")"
   fi
done
}

#-------------------------------------------------------------------
#call all functions
#--------------------------------------------------------------------
log "====== Script Started ======"
check_dir
create_dir
archive_logs
delete_archive
log "====== Script Completed ====="
