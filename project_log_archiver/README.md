# 📦 Log Archiver Script

A production-style Bash automation script that archives and cleans up old log files.

Built as part of my Linux & Shell scripting journey 

---

## 📌 Project Overview

This script:

- ✅ Compresses `.log` files older than **7 days**
- ✅ Moves them to an `archive/` directory
- ✅ Deletes archived `.gz` files older than **30 days**
- ✅ Maintains a detailed execution log (`archiver.log`)
- ✅ Runs automatically every day at **2:00 AM via cron**

---

## 🛠️ Tech Stack

- Bash Shell Scripting  
- Linux `find` command  
- `gzip` for compression  
- `cron` for automation  

---

## 📂 Project Structure

```
project_log_archiver/
│
├── log_archiver.sh
├── archiver.log
└── test_logs/
    ├── archive/
    └── *.log
```

---

## ⚙️ Configuration Variables

Inside the script:

```bash
source=./test_logs
archive=./test_logs/archive
days=7
delete=30
logfile=./archiver.log
```

| Variable | Description |
|----------|------------|
| `source` | Directory containing log files |
| `archive` | Directory where compressed logs are stored |
| `days` | Logs older than this will be compressed |
| `delete` | Archives older than this will be deleted |
| `logfile` | Script execution log file |

---

## 🔄 How It Works

### 1️⃣ Check Source Directory  
Ensures the log directory exists.

### 2️⃣ Create Archive Directory  
Creates archive folder if it doesn’t exist.

### 3️⃣ Archive Old Logs  
- Finds `.log` files older than 7 days  
- Compresses them using `gzip`  
- Moves them to `archive/`

### 4️⃣ Delete Old Archives  
Removes `.gz` files older than 30 days.

---

## ⏰ Cron Automation (Runs Daily at 2 AM)

Cron entry:

```bash
0 2 * * * /absolute/path/to/log_archiver.sh >> /absolute/path/to/archiver.log 2>&1
```

To edit crontab:

```bash
crontab -e
```

This ensures the script runs automatically every night at **2:00 AM**.

---

## 🧪 Manual Execution

To run manually:

```bash
chmod +x log_archiver.sh
./log_archiver.sh
```

---

## 📝 Sample Log Output

```
25-05-06 02:00:01 - ====== Script Started ======
25-05-06 02:00:02 - archiving logs older than 7 days....
25-05-06 02:00:03 - archived: app.log
25-05-06 02:00:04 - deleting archives older than 30 days....
25-05-06 02:00:05 - ====== Script Completed ======
```

---

## 💡 Key Learning Outcomes

- Writing modular Bash scripts
- Implementing logging functions
- Error handling in shell scripting
- Using `find` with time-based filters
- Automating tasks with cron
- Production-style script structuring

---

## 🚀 Future Improvements

- Add email notification on failure  
- Add configurable arguments via CLI flags  
- Add dry-run mode  
- Add log rotation for `archiver.log`  

---

## 👩‍💻 Author

**Disha Rajput**  
Linux | Cloud | DevOps Enthusiast
