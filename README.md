# Linux Cloud Journey

This repository documents my structured journey of mastering:

- Linux Fundamentals
- Shell Scripting
- Git & Version Control
- Cloud Basics

## Day 01 - Shell Basics

1. system_info.sh 
 Created a system information script that:
- Displays logged-in user
- Shows date and uptime
- Checks disk and memory usage
2.   create_user.sh
  bash script to automate user creation
  - takes username as input
  - checks if user already exists
  - creates home directory
  - sets password securely
  - displays succes image
3. variables.sh
  - declaring variables like name and age
  - printing output using echo
  - making a variable immuatble using readonly.
4. additon.sh
  - adds 2 numbers given beside script.

## Day 02 - Conditional Statements

Today I practiced decision-making in shell scripting using:

- "if", "else", "elif"
- Numeric comparison operators ("-lt", "-gt", "-eq")
- Logical operators ("&&")
- String checks ("-z")
- File existence checks ("-f")

🛠 Scripts Created
1. "age_verify.sh" → Categorizes user as Minor, Adult, or Senior Citizen
2. "num_checker.sh" → Checks if number is Positive, Negative, or Zero
3. "file_checker.sh" → Verifies whether a file exists


## Day 03 – Case Statement & Pattern Matching

##  Topics Covered
- `case` statement
- Pattern matching with wildcards (`*`)
- Logical branching
- Menu-driven scripting
- Basic system utilities
- File extension detection

#  Scripts created
1. calculator.sh
Simple calculator using `case`.
**Features:**
- Takes two numbers as input
- Supports: `+`, `-`, `*`, `/`
- Handles invalid operators

2. grade.sh
**Features:**
- Accepts grade (A, B, C, D)
- Displays performance message
- Handles invalid input

3. weekdays.sh
**Features:**
- Maps number to weekday
- Includes default case handling

4. system_menu.sh
**Features:**
- Show current date
- Show current directory
- Show disk usage (`df -h`)
- Show RAM usage (`free -h`)
- Show system uptime
- Uses `case` for clean branching

5. file_type_checker.sh
**Features:**
- `.sh` → Shell Script  
- `.txt` → Text File  
- `.jpg` / `.png` → Image File  
- Anything else → Unknown File Type  

## 🛠 How to Run Any Script

```bash
chmod +x script_name.sh
./script_name.sh
