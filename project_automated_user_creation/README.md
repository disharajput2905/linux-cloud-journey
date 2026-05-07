# 👤 Linux User Creation Script

A production-style Bash script that creates a single Linux user with a generated password, logging, and proper error handling.

Built as part of my Linux & Shell scripting journey 

---

## 📌 Project Overview

This script:

- ✅ Requires sudo/root privileges
- ✅ Accepts username and optional comment as arguments
- ✅ Checks if user already exists
- ✅ Generates a random password
- ✅ Creates home directory automatically
- ✅ Sets password securely
- ✅ Forces password change on first login
- ✅ Logs all actions to `user_creation.log`
- ✅ Displays account details after creation

---

## 🛠️ Tech Stack

- Bash Shell Scripting  
- `useradd` command  
- `chpasswd`  
- `passwd -e`  
- `id` command for validation  
- Logging with timestamps  

---

## 📂 Project Structure

```
project_automated_user_creation/
│
├── user_creation.sh
└── user_creation.log
```

---

## ⚙️ How the Script Works

### 1️⃣ Check Root Privileges
The script verifies if it is being run with sudo/root access.

If not:
```
please run this script with sudo or as root
```

---

### 2️⃣ Validate Arguments

Usage:

```bash
sudo ./user_creation.sh username "Full Name / Comment"
```

If no username is provided:

```
Usage: ./user_creation.sh user_name [comment]...
```

---

### 3️⃣ Check If User Already Exists

Uses:

```
id username
```

- If user exists → logs failure and exits.
- If not → proceeds to create user.

---

### 4️⃣ Generate Random Password

Password is generated using:

```bash
password=$(date +%s%N)
```

This creates a timestamp-based unique password.

---

### 5️⃣ Create User Account

```
useradd -c "comment" -m username
```

- `-c` → Adds comment (Full Name)
- `-m` → Creates home directory

---

### 6️⃣ Set Password

```
echo "username:password" | chpasswd
```

If password setup fails → script exits with error.

---

### 7️⃣ Force Password Change

```
passwd -e username
```

This forces the user to change password at first login.

---

### 8️⃣ Display Account Details

After successful creation, the script prints:

```
-------------------------------------------------
User created successfully
_______________________________
Username: <username>
Password: <generated_password>
Hostname: <system_hostname>
-------------------------------------------------
```

---

## 🧪 Example Usage

```bash
sudo ./user_creation.sh rahul "Rahul Sharma"
```

---

## 📝 Sample Log Output (user_creation.log)

```
26-05-07 21:00:01: User rahul created successfully
26-05-07 21:00:02: password for rahul created successfully
26-05-07 21:00:03: password expiry set for rahul
```

If user already exists:

```
FAILED: User-rahul exists already
```

---

## 🔐 Security Notes

- Must be run with sudo/root privileges.
- Password is displayed once on screen.
- User is forced to change password at first login.
- For production environments, consider:
  - Stronger random password generation
  - Secure password delivery method
  - Logging to a protected location

---

## 💡 Key Learning Outcomes

- Argument handling in Bash
- Root privilege validation
- Exit status checking (`$?`)
- Linux user management commands
- Secure password handling
- Logging with timestamps
- Writing structured automation scripts

---

## 🚀 Future Improvements

- Generate stronger random passwords using `/dev/urandom`
- Add group assignment option
- Add batch user creation support
- Add email notification feature
- Convert into enterprise-grade provisioning tool

---

## 👩‍💻 Author

**Disha Rajput**  
Linux | Cloud | DevOps Enthusiast
