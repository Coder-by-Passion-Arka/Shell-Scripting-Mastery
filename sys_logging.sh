#!/bin/bash

# Personal log file path
# LOG_FILE="$HOME/personal_system_log.txt"
# echo "HOME: " "${HOME}"

printf '%s\n' ""
LOG_FILE="./personal_system_log.txt"

touch "$LOG_FILE"

# Function to print a message to terminal and save it in the log file
log_line() {
    local message="$1"
    printf '%s | %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$message" | tee -a "$LOG_FILE"
    # tee copies its input to both:
    #   standard output (the terminal)
    #   specificed file
    
    # -a means append to the file instead of overwriting it
    
    # "$LOG_FILE" is the file path where the message should be stored
}

# Function to run a command and capture both output and error streams
run_and_log() {
    local label="$1" # First arguement passed to the func
    shift # This removes the first argument from the argument list.

    log_line "Starting: $label"
    "$@" 2>&1 | tee -a "$LOG_FILE" # "$@" Returns all the arguements left after the first argument gets deleted 
}

log_line "System performance check started"

run_and_log "Current date and time" date
run_and_log "System uptime" uptime
run_and_log "Disk usage" df -h
run_and_log "Memory usage" free -m
run_and_log "Top 5 CPU processes" ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 5

log_line "System performance check finished"