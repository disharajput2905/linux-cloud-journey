# Linux Backup Automation Script

A production-style Bash script that creates compressed backups of a project directory with logging and structured error handling.

Built as part of my Linux & Cloud automation journey 🚀

---

## 📌 Project Overview

This script:

- ✅ Creates compressed `.tar.gz` backups
- ✅ Backs up a specific project directory
- ✅ Stores backups in a dedicated backup folder
- ✅ Logs all backup activity
- ✅ Uses timestamp-based naming
- ✅ Can be automated using cron

---

## 🛠️ Tech Stack

- Bash Shell Scripting  
- `tar` for compression  
- Linux file system operations  
- Logging with timestamps  
- `cron` for automation  

---

## 📂 Project Structure

```
project_backup_script/
│
├── backup_script.sh
├── backup.log
└── backups/
```

---

## ⚙️ Script Configuration

Inside the script:

```bash
source=/home/disharajput/linux-cloud-journey
dest=/home/disharajput/backups/linux-cloud-journey
logfile=/home/disharajput/backups/backup.log
backup_name="linux-cloud-journey_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"
```

| Variable | Description |
|----------|------------|
| `source` | Directory to be backed up |
| `dest` | Destination directory for storing backups |
| `logfile` | Backup activity log |
| `backup_name` | Timestamp-based archive name |

---

## 🔄 How It Works

### 1️⃣ Validate Source Directory
Ensures the project directory exists before starting backup.

---

### 2️⃣ Create Destination Directory
Creates backup directory if it doesn’t exist.

---

### 3️⃣ Generate Backup File

Creates compressed archive using:

```bash
tar -czf "$dest/$backup_name" "$source"
```

- `-c` → Create archive  
- `-z` → Compress using gzip  
- `-f` → Specify filename  

---

### 4️⃣ Log Backup Status

All actions are logged inside:

```
backup.log
```

Example log entry:

```
2026-05-07 02:00:01 - Backup started
2026-05-07 02:00:05 - Backup created successfully: linux-cloud-journey_2026-05-07_02-00-01.tar.gz
2026-05-07 02:00:06 - Backup completed
```

---

## 🧪 Manual Execution

Make the script executable:

```bash
chmod +x backup_script.sh
```

Run the script:

```bash
./backup_script.sh
```

---

## ⏰ Cron Automation (Runs Daily at 2 AM)

Cron entry:

```bash
0 2 * * * /absolute/path/to/backup_script.sh >> /absolute/path/to/backup.log 2>&1
```

Edit crontab:

```bash
crontab -e
```

This ensures automatic daily backups at **2:00 AM**.

---

## 🔐 Best Practices

- Store backups on a separate disk or external storage
- Restrict access to backup directory
- Regularly verify backup integrity
- Monitor disk space usage
- Implement retention policy for old backups

---

## 💡 Key Learning Outcomes

- Automating file backups using Bash
- Working with `tar` and compression
- Logging script execution
- Using timestamps for unique file naming
- Automating backups using cron
- Writing production-style automation scripts

---

## 🚀 Future Improvements

- Add retention policy (delete backups older than X days)
- Add email notification on failure
- Add remote backup (SCP/RSYNC)
- Add backup size reporting

---

## 👩‍💻 Author

**Disha Rajput**  
Linux | Cloud | DevOps Emthusiast
