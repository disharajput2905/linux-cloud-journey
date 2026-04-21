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


## Day 04 – Loops

## Topics Covered
- for loop
- while loop
- until loop
- break and continue
- Loop-based automation
- Debugging common loop errors

# Scripts Created

1. countdown.sh
- Takes user input
- Displays countdown timer using while loop

2. cpu_monitor.sh
- Monitors CPU usage
- Runs continuously using infinite loop
- Uses sleep for interval control

3. create_multiple_users.sh
- Creates multiple users automatically
- Uses for loop and seq

4. file_counter.sh
- Counts number of .sh files in directory

5.  multiple_folder_creation.sh
- Creates multiple folders dynamically
- Uses loop-based automation

6. password_checker.sh
- Repeats until strong password is entered
- Demonstrates input validation using loop

7. table.sh
- Prints multiplication table using loop

##  Day 05 – Functions & Arguments

## Topics Covered
- Bash functions
- Script arguments (`$1`, `$2`, `$@`, `$#`)
- Argument validation
- Exit status (`$?`)
- Looping through arguments
- Silent execution using `&>/dev/null`

### 🛠 Scripts Created
1. arguments.sh  
- Demonstrates how to access command-line arguments  
- Prints first argument, second argument  
- Displays total number of arguments  
- Loops through all arguments using `for` loop  

2. calculator_args.sh
- Accepts numbers and operator as arguments  
- Performs arithmetic operations using `case`  
- Validates argument count  
- Displays usage message if incorrect input provided  

3. hello_note.sh
- Uses functions for structured scripting  
- Accepts user input or arguments  
- Prints formatted greeting message  

4. multi_greet.sh  
- Accepts multiple names as arguments  
- Loops through `$@`  
- Greets each user individually  
- Includes argument validation  

# Skills Improved
- Writing modular scripts
- Handling dynamic input from terminal
- Improving script reliability with validation
- Understanding how real-world CLI tools work


##  Day 06 – Arrays & File Handling

##  Topics Covered
- Indexed Arrays
- Associative Arrays
- Array expansion (${array[*]})
- Adding elements to arrays
- Reading file line by line
- logging with timestamps
- system health monitoring
- Input redirection (<)
- Basic automation using arrays & files

##Scripts Created

1. arrays.sh
- Created indexed array of servers
- Accessed elements using index
- Displayed all elements using ${servers[*]}
- Added new elements dynamically
- Simulated server initialization

2. array-key.sh
- Created associative array using declare -A
- Stored key-value pairs (name, age, city, domain)
- Accessed values using keys
- Displayed structured user information

3. Readfile.sh
- Used while read loop
- Read data from domaininfo.txt
- Printed each line dynamically
- Demonstrated file-based automation

4. file_check.sh
- Takes filename as user input
- Checks if file exists
- Displays file content if present
- Shows message if file not found

Concepts used:
- read command
- if condition
- -f file test operator
- cat command


5. log_script.sh
- Creates app.log
- Adds timestamp using date command
- Logs script activity with user information
- Uses >> for appending logs


6. health_check.sh
- Generates system health report
- Checks:
  - CPU load (uptime)
  - Memory usage (free -h)
  - Disk usage (df -h)
- Saves output to health.log


 Log Files Generated
- app.log
- health.log
- all.log (combined output & error redirection practice)


Key Learnings
- Difference between logfile and $logfile
- Importance of variable referencing
- Output redirection (>, >>, 2>, 2>&1)
- Practical logging used in real DevOps environments
- Basic monitoring automation

## Supporting File
3.0 domaininfo.txt
- Contains user domain data
- Used as input file for Readfile.sh
0.0 goals.txt
- for fun





## 🛠 How to Run Any Script

```bash
chmod +x script_name.sh
./script_name.sh

