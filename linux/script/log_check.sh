#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: check_log <log_file>"
  exit 1
fi

log_file=$1

if [ ! -e "$log_file" ]; then
  echo "Log file does not exist."
  exit 1
fi

if [ ! -r "$log_file" ]; then
  echo "Log file is not readable."
  exit 1
fi

echo "Log file exists and is readable. Checking for new entries..."

last_log_line=$(tail -n 1 "$log_file")

while true; do
  current_log_line=$(tail -n 1 "$log_file")

  if [ "$current_log_line" != "$last_log_line" ]; then
    echo "New log entry: $current_log_line"
    last_log_line=$current_log_line
  fi

  sleep 1
done
