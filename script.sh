#!/bin/bash

if [ "$1" == "-d" ]; then
  echo "Aktualna data i godzina: $(date)"
  exit 0
if [ "$1" == "-l" ]; then
  if [ "$2" == "" ]; then
    n=100
  else
    n=$2
  fi
  for (( i=1; i<=$n; i++ )); do
    echo "log$i.txt created by script.sh on $(date)" > log$i.txt
  done
elif [ "$1" == "-h" ]; then
  echo "Usage: script.sh [option]"
  echo "Options:"
  echo "  -d        display today's date"
  echo "  -l [n]      create n log files (default: 100)"
  echo "  -h         display this help message"
else
  echo "Invalid option. Use --help to display available options."
fi
