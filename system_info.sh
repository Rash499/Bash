#!/bin/bash

# Define the log file
LOG_FILE="system_info.log"

# Function to log a message with a timestamp
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a $LOG_FILE
}

# Start logging
log_message "System Information Retrieval Script Started"

# Display and log the hostname
HOSTNAME=$(hostname)
log_message "Hostname: $HOSTNAME"

# Display and log the current date and time
CURRENT_DATE=$(date '+%Y-%m-%d %H:%M:%S')
log_message "Current Date and Time: $CURRENT_DATE"

# List all running processes
log_message "Running Processes:"
ps aux | tee -a $LOG_FILE

# Display and log disk usage
log_message "Disk Usage:"
df -h | tee -a $LOG_FILE

# End logging
log_message "System Information Retrieval Script Completed"
