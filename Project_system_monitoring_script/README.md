# 📊 System Monitoring Script

A production-style Bash script that monitors system resources and logs alerts when thresholds are exceeded.

Built as part of my Linux & Cloud automation journey 🚀

---

## 📌 Project Overview

This script:

- ✅ Monitors CPU usage
- ✅ Monitors RAM usage (percentage-based)
- ✅ Monitors Disk usage
- ✅ Logs alerts when usage crosses defined thresholds
- ✅ Appends output to a logfile
- ✅ Runs automatically every 5 minutes using cron

---

## 🛠️ Tech Stack

- Bash Shell Scripting  
- Linux system utilities (`top`, `free`, `df`)  
- `awk` for parsing  
- `cron` for automation  
- `postfix` for mail
- `systemctl` for service management
---

## 📂 Project Structure

```
Project_system_monitoring_script/
│
├── system_monitoring_script.sh
└── logfile
```

---

## ⚙️ Threshold Configuration

Inside the script:

```bash
cpu_th=80
ram_th=85
disk_th=80
```

| Variable | Description |
|----------|------------|
| `cpu_th` | Alert if CPU usage exceeds this % |
| `ram_th` | Alert if RAM usage exceeds this % |
| `disk_th` | Alert if Disk usage exceeds this % |

You can adjust these values based on your system capacity.

---

## 🔄 How It Works

### 1️⃣ CPU Monitoring
- Extracts CPU usage
- Compares against threshold
- Logs alert if exceeded

### 2️⃣ RAM Monitoring
- Calculates RAM usage percentage
- Compares against threshold
- Logs warning if exceeded

### 3️⃣ Disk Monitoring
- Checks root (`/`) disk usage
- Compares against threshold
- Logs alert if exceeded

All results are appended to `logfile`.

---

## ⏰ Cron Automation (Runs Every 5 Minutes)

Cron entry:

```bash
*/5 * * * * /absolute/path/to/system_monitoring_script.sh >> /absolute/path/to/logfile 2>&1
```

To edit crontab:

```bash
crontab -e
```

This ensures continuous monitoring of system health.

---

## 🧪 Manual Execution

To run manually:

```bash
chmod +x system_monitoring_script.sh
./system_monitoring_script.sh
```

---

## 📝 Sample Log Output

```
2026-05-06 10:00:01 - ===== Monitoring Started =====
2026-05-06 10:00:02 - CPU Usage: 72%
2026-05-06 10:00:02 - RAM Usage: 68%
2026-05-06 10:00:02 - Disk Usage: 75%
2026-05-06 10:00:02 - ===== Monitoring Completed =====
```

If threshold is crossed:

```
2026-05-06 10:05:02 - WARNING: RAM usage exceeded threshold!
```

---

## 💡 Key Learning Outcomes

- Parsing system metrics using Bash
- Working with CPU, RAM, and Disk commands
- Implementing threshold-based alerts
- Writing structured logs
- Automating monitoring using cron
- Understanding production-style scripting

---

## 🚀 Future Improvements

- Add email alerts on threshold breach  
- Send notifications to Slack/Discord  
- Add color-coded terminal output  
- Add load average monitoring  
- Convert into a reusable monitoring tool  

---

## 👩‍💻 Author

**Disha Rajput**  
Linux | Cloud | DevOps Learner
