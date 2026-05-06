📊 Project: System Monitoring Script

A production-style Bash automation script that monitors system resources and service health, sends email alerts, logs activity, and runs automatically using cron.

📁 Repository: linux-cloud-journey
📂 Folder: Project_system_monitoring_script
📜 Script: system_monitoring_script.sh


---

🚀 Project Overview

This script continuously monitors:

CPU Usage

RAM Usage

Disk Usage

Nginx Service Status


If any threshold is exceeded:

An email alert is triggered

The event is logged

If Nginx is down, it is automatically restarted


The script runs automatically every 5 minutes using sudo crontab -e.


---

⚙️ Technologies Used

Bash Scripting

Linux System Commands (top, free, df)

systemctl for service management

Cron Jobs

Mail Utility (mail)

Log File Handling

Conditional Logic & Functions



---

🧠 Monitoring Logic

🔹 CPU Check

Extracts CPU usage using top

Sends alert if usage > 80%


🔹 RAM Check

Calculates memory usage percentage

Sends alert if usage > 85%


🔹 Disk Check

Checks disk usage via df

Sends alert if usage > 80%


🔹 Nginx Service Check

Uses systemctl is-active

If down:

Attempts automatic restart

Sends alert email

Logs status




---

📂 Project Structure

Project_system_monitoring_script/
│
├── system_monitoring_script.sh
├── system_monitoring.log
└── README.md


---

📜 Script Configuration

Threshold values:

cpu_th=80
ram_th=85
disk_th=80

Email recipient:

to=disharajput2906@gmail.com

Log file:

logfile="system_monitoring.log"


---

⏰ Cron Automation

The script runs automatically every 5 minutes using:

sudo crontab -e

Cron entry:

*/5 * * * * /home/disharajput/linux-cloud-journey/Project_system_monitoring_script/system_monitoring_script.sh >> /home/disharajput/linux-cloud-journey/Project_system_monitoring_script/system_monitoring.log 2>&1

This ensures:

Continuous monitoring

Logs are appended

Errors are captured



---

🛠️ Setup Instructions

1️⃣ Make script executable

chmod +x system_monitoring_script.sh

2️⃣ Install mail utility

sudo apt install mailutils

3️⃣ Test manually

./system_monitoring_script.sh
or
sudo ./system_monitoring_script.sh
---

📊 Sample Output

Normal state:

CPU Usage is Normal: 32%
RAM Usage is Normal: 48%
Disk Usage is Normal: 60%
Nginx is running.

Alert state:

CPU ALERT! - Usage: 91%


---

🎯 What This Project Demonstrates

✔ Linux system administration
✔ Production-style monitoring
✔ Automation using cron
✔ Service health checks
✔ Log management
✔ Email alert integration
✔ DevOps fundamentals


---

🔮 Future Improvements

Add load average monitoring

Add Slack/Telegram alerts

Improve CPU parsing method

Make disk check dynamic (instead of hardcoded sda2)

Add uptime monitoring



---

👩‍💻 Author

Disha Rajput
Linux & Cloud Learning Journey 
