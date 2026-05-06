#!/bin/bash
set -euo pipefail

# ------------------------------------------
#       threshold values
#-------------------------------------------
cpu_th=80
ram_th=85  # in %
disk_th=80   # in %
to=disharajput2906@gmail.com
logfile="system_monitoring.log"

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
free_ram=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')
     if [ $free_ram -gt $ram_th ]; then
      echo -e "${RED} HIGH RAM Usage!! : $free_ram%${NC}"
        log "RAM ALERT! - Usage: $free_ram%"
         echo "Avialable  RAM Usage is HIGH! $free_ram%" | mail -s "RAM ALERT!" $to
      else echo " RAM Usage is Normal "
             echo -e "${GREEN}RAM Usage is Normal: $free_ram%${NC}"
            log " RAM Usage is Normal - Usage: $free_ram%" 
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

# ----------------------------
# Check Nginx Service
# ----------------------------
check_nginx() {
    systemctl is-active --quiet nginx
      if [ $? -ne 0 ]; then
        echo -e "${RED}Nginx is DOWN. Restarting...${NC}"
        log "NGINX DOWN - Restarting service"

     systemctl restart nginx
         if [ $? -eq 0 ]; then
            echo -e "${GREEN}Nginx restarted successfully.${NC}"
            log "NGINX RESTART SUCCESS"
            echo "Nginx was down and has been restarted." | mail -s "Nginx Restart Alert" $EMAIL
        else
            echo -e "${RED}Nginx restart FAILED!${NC}"
            log "NGINX RESTART FAILED"
            echo "Nginx restart failed. Immediate attention needed." | mail -s "Critical Nginx Failure" $EMAIL
        fi
    else
        echo -e "${GREEN}Nginx is running.${NC}"
        log "NGINX OK"
    fi
}

#---------------------------------------------
# call all functions
#--------------------------------------------
echo -e "${YELLOW}Starting System Monitoring....${NC}"
log "--------- Script started ----------"
check_cpu
check_ram
check_disk
check_nginx
log "-------- Script Finished ----------"
echo -e "${YELLOW}Monitoring Completed.${NC}"
