######  Project: Log Archiver (Shell Script)

A production-style shell script that:

✅ Compresses old log files using gzip

✅ Moves them to an archive directory

✅ Deletes archives older than 30 days

✅ Includes error handling

✅ Logs script activity

✅ Can be automated using cron


This project is part of my linux-cloud-journey repository to practice real-world DevOps-style shell scripting.


---

📁 Project Structure

project_log_archiver/
│── log_archiver.sh
│── archiver.log
│── test_logs/
│   ├── app.log
│   └── archive/


---

####  Features
1. Archive Old Logs

Finds .log files older than X days

Compresses them using gzip

Moves them to archive/ directory


2. Cleanup Old Archives

Deletes archived .gz files older than 30 days


3. Error Handling

Validates source directory exists

Creates archive directory if missing

Logs errors properly

Safe file operations


4. Logging

All script activity is recorded in:

archiver.log


---

🛠️ Script Explanation

🔹 Variables

SOURCE_DIR="./test_logs"
ARCHIVE_DIR="./test_logs/archive"
LOG_FILE="archiver.log"
DAYS_OLD=7
DELETE_AFTER=30

SOURCE_DIR → Where logs exist

ARCHIVE_DIR → Where compressed logs are stored

DAYS_OLD → Archive logs older than 7 days

DELETE_AFTER → Delete archives older than 30 days



---

🔹 Step 1: Validate Source Directory

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist!" >> "$LOG_FILE"
    exit 1
fi

Prevents script failure if path is wrong.


---

🔹 Step 2: Create Archive Directory

mkdir -p "$ARCHIVE_DIR"

-p ensures no error if directory already exists.


---

🔹 Step 3: Compress and Move Old Logs

find "$SOURCE_DIR" -type f -name "*.log" -mtime +$DAYS_OLD | while read file
do
    gzip "$file"
    mv "$file.gz" "$ARCHIVE_DIR"
done

-mtime +7 → Files older than 7 days

gzip → Compresses log

mv → Moves compressed file



---

🔹 Step 4: Delete Old Archives

find "$ARCHIVE_DIR" -type f -name "*.gz" -mtime +$DELETE_AFTER -exec rm -f {} \;

Deletes archive files older than 30 days.


---

▶️ How to Run

Make script executable:

chmod +x log_archiver.sh

Run:

./log_archiver.sh


---

⏰ Automate with Cron

Open crontab:

crontab -e

Example: Run daily at 2 AM

0 2 * * * /home/disharajput/linux-cloud-journey/project_log_archiver/log_archiver.sh >> /home/disharajput/linux-cloud-journey/project_log_archiver/archiver.log 2>&1


---

📚 What I Learned

Using find with -mtime

File compression with gzip

Safe scripting practices

Logging and redirection

Directory validation

Automating with cron

Writing production-style shell scripts



---

🎯 Future Improvements

Add email alerts

Add configurable arguments

Add dry-run mode

Convert into reusable production utility



---

# Skills Used

Linux
Bash
Cron
Git
