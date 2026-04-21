#!/bin/bash
logfile="app.log"
echo "$(date) - script started by $USER on $HOSTNAME   " >> $logfile
echo "$(date) - checking system status by $USER on $HOSTNAME " >> $logfile
echo "report saved to $logfile "
