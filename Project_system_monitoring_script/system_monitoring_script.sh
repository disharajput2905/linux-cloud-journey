#!/bin/bash
# ------------------------------------------
#       threshold values
#-------------------------------------------
cpu_th=80
ram_th=1000  # in MB
disk_th=80   # in %
to=disharajput2906@gmail.com
logfile="system_monitoring_log"

# -----------------------------------------
# Colors
# -----------------------------------------
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'   # No Color

#------------------------------------------
#function: log message
#-------------------------------------------
log(){
echo " $(date) : $1" >> logfile
}

#-------------------------------------------
#  function: CPU check
#-------------------------------------------
check_cpu() {
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d. -f1)
    if [ $cpu_usage -gt $cpu_th ]; then
      echo -e "${RED} CPU Usage is HIGH: $cpu_usage%${NC}"
        log "CPU ALERT! - Usage: $cpu_usage%"
         echo " CPU Usage is High! : $cpu_usage%" | mail -s "CPU ALERT! " $to
    else echo "CPU Usage is Normal"
          echo -e "${GREEN}CPU Usage is Normal: $cpu_usage%${NC}"
            log "CPU Usage is Normal - Usage: $cpu_usage%"
    fi
}

#--------------------------------------------
#function : check RAM
#--------------------------------------------
check_ram() {
free_ram=$(free -mt | grep "Total" | awk '{print $4}')
     if [ $free_ram -lt $ram_th ]; then
      echo -e "${RED} RAM is LOW: ${free_ram}MB${NC}"
        log "RAM ALERT! - Usage: ${free_ram}MB"
         echo "Avialable  RAM is LOW! ${free_ram}MB" | mail -s "RAM ALERT!" $to
      else echo " RAM is Ok "
             echo -e "${GREEN}RAM is Normal: ${free_ram}MB${NC}"
            log " RAM is Ok - Usage: ${free_ram}MB" 
     fi
}

#-------------------------------------------
# function: check Disk
#-------------------------------------------
check_disk() {
disk_usage=$(df -H | egrep -v "filesystem|tmpfs" | grep sda2 | awk '{print $5}' | tr -d % )
      if [ $disk_usage -gt $disk_th ]; then
       echo -e "${RED}Disk Usage is HIGH: $disk_usage%${NC}"
         log "DISK ALERT! - Usage: $disk_usage%"
          echo "Disk Usage is High : $disk_usage%" | mail -s "DISK ALERT!" $to
      else echo "Disk Usage is Normal"
              echo -e "${GREEN}Disk Usage is normal: $disk_usage%${NC}"
               log "Disk Usage is Normal - Usage: $disk_usage%"
      fi
}

#---------------------------------------------
# call functions
#--------------------------------------------
check_cpu
check_ram
check_disk
