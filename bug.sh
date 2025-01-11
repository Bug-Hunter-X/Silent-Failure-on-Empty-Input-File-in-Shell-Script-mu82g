#!/bin/bash

# This script attempts to process a file but has a subtle error.

file_to_process="my_file.txt"

if [ -f "$file_to_process" ]; then
  echo "File exists, processing..."
  # The error is here.  The script assumes the file will always contain lines.
  while IFS= read -r line; do
    echo "Processing line: $line"
    # ... further processing ...
  done < "$file_to_process"
else
  echo "File not found."
fi