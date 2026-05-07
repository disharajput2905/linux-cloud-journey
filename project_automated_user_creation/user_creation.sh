#!/bin/bash
#set euo pipefail
#--------------------------------------------------------
#variables
#--------------------------------------------------------
logfile=user_creation.log

#-------------------------------------------------------
#logging
#--------------------------------------------------------
log() {
echo "$(date '+%y-%m-%d %H:%M:%S'): $1 " >> $logfile
}

#-------------------------------------------------------
#check sudo privilege
#------------------------------------------------------
if [ "$UID" -ne 0 ]; then
echo "please run this script with sudo or as root"
exit 1
fi

#------------------------------------------------------
#argument error handling
#-----------------------------------------------------
if [ $# -lt 1 ]; then
echo "Usage: $0 user_name [comment]..."
exit 1
fi

#-----------------------------------------------------
#store arguments
#-----------------------------------------------------
username="$1"
shift
comment="$@"

#-----------------------------------------------------
#check if user exists
#----------------------------------------------------
if id $username &>/dev/null
then
echo "User already exists"
log "FAILED: User-$username exists already"
exit 1
fi

#-----------------------------------------------------
#random password
#-----------------------------------------------------
password=$(date +%s%N)

#----------------------------------------------------
#create the user
#----------------------------------------------------
useradd -c "$comment" -m "$username"

#----------------------------------------------------
#check if useradd success
#------------------------------------------------------
if [ $? -ne 0 ]; then
echo "The account coult not be created"
log "FAILED:user creation failed for $username"
exit 1
fi
log "User $username created successfully"
#------------------------------------------------------
#set password
#------------------------------------------------------
echo "${username}:${password}" | chpasswd

#-------------------------------------------------------
#check if password set successfully
#-------------------------------------------------------
if [ $? -ne 0 ]; then
echo "passwod  set failed"
log "FAILED: password setup failed for $username"
exit 1
fi
log "password for $username created succesfully"

#-------------------------------------------------------
#force password change on first login
#-------------------------------------------------------
passwd -e "$username"
log "password expiry set for $username"

#-------------------------------------------------------
#display account details
#------------------------------------------------------
echo "-------------------------------------------------"
echo "User created succesfully "
echo "_______________________________"
echo "Username: $username" 
echo "Password: $password"
echo "Hostname: $(hostname)"
echo "-------------------------------------------------"
exit 0

