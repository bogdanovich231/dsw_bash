#!/bin/bash

if [ "$1" == "--date" ]; then
  date
elif [ "$1" == "--logs" ]; then
  if [ "$2" ]; then
    n=$2
  else
    n=100
  fi
  for (( i=1; i<=$n; i++ )); do
    echo "log$i.txt created by script.sh on $(date)" > log$i.txt
  done
elif [ "$1" == "--help" ]; then
  echo "Usage: script.sh [option]"
  echo "Options:"
  echo "  --date          display today's date"
  echo "  --logs [n]      create n log files (default: 100)"
  echo "  --help          display this help message"
else
  echo "Invalid option. Use --help to display available options."
fi