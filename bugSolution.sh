#!/bin/bash

# This script provides a solution to the bug by explicitly checking
# the file size before processing.

file_to_process="my_file.txt"

if [ -f "$file_to_process" ]; then
  if [ -s "$file_to_process" ]; then
    echo "File exists and is not empty, processing..."
    while IFS= read -r line; do
      echo "Processing line: $line"
      # ... further processing ...
    done < "$file_to_process"
  else
    echo "File is empty. No processing needed."
  fi
else
  echo "File not found."
fi