# Bash Scripting Fundamentals: A Summary

This document summarizes the key concepts and lessons learned while working through a series of hands-on bash scripting tasks.

## Task 1: Appending Positional Parameters

**Goal:** Create a script that takes three names as arguments and appends each to roster.txt.

**Key Concepts:**
- Positional Parameters: Variables like $1, $2, and $3 that hold the arguments passed to a script.
- Argument Count: The special variable $# holds the total number of arguments. We used an if statement to check if the count was exactly 3.
- File Redirection: The >> operator appends output to a file without overwriting its existing content.
- Quoting Variables: Always use double quotes around variables (e.g., "$1") to prevent issues with spaces in names.

## Task 2: Reading a File into an Array

**Goal:** Read the contents of roster.txt into an array and print the second element.

**Key Concepts:**
- Word Splitting Flaw: Directly using $(cat file) to populate an array is unreliable because the shell splits the output on spaces, breaking up multi-word names.
- The while Loop: The most robust method for reading a file line-by-line is the while IFS= read -r LINE; do ... done < file pattern.
- IFS Variable: IFS (Internal Field Separator) tells the read command how to split lines. Setting IFS= tells it not to split on spaces, ensuring the entire line is read as a single unit.
- Array Syntax: Use namesARRAY+=("LINE") to append an element to an array and {namesARRAY[1]} to access the second element (arrays are zero-indexed).

## Task 3: Looping Through an Array to Create Directories

**Goal:** Loop through the names in an array and create a directory for each one.

**Key Concepts:**
- Correct for Loop Syntax: The correct way to iterate over all elements in an array is for NAME in "${namesARRAY[@]}"; do ... done. The [@] gets all elements, and the double quotes prevent word splitting.
- mkdir Command: This command creates a new directory.
- Home Directory Shortcut: The ~ or $HOME variable points to the current user's home directory.

## Task 4: Adding if/else to Check for Directory Existence

**Goal:** Modify the script to check if a directory already exists before trying to create it.

**Key Concepts:**
- if/else Statements: This is a conditional structure that allows the script to make a decision.
- The -d Test Operator: Inside an if statement, [ -d "/path" ] checks if a path is a directory.
- Robustness: This change makes the script more resilient to errors by preventing mkdir from failing when a directory already exists.

## Task 5: Looping, Checking for Duplicates, and Logging

**Goal:** Read a file, create directories, and log duplicates to a separate file.

**Key Concepts:**
- while Loop for Line-by-Line Processing: We used a while loop again as the most reliable way to process the names.txt file.
- Conditional Logic: We used an if/else statement inside the loop to check for the directory's existence.
- Redirection to a Log File: We used >> duplicates.txt to append duplicate names to a separate file, fulfilling the task requirement to log them rather than just printing an error.

## Task 6: Cron Jobs and Absolute Paths

**Goal:** Create a script to list a directory's contents into an array and schedule it to run automatically with a cron job.

**Key Concepts:**
- Cron Job: A system tool for scheduling tasks to run at a specific time.
- Crontab Syntax: A cron job entry has five time fields for minute, hour, day of month, month, and day of week.
- Absolute vs. Relative Paths: A cron job requires an absolute path (starting with /) to the script, as it doesn't know the user's current directory or home directory shortcuts like ~.
- Background Execution: Cron jobs run in the background with no display, so it's essential to redirect output to a log file to verify they ran successfully.
