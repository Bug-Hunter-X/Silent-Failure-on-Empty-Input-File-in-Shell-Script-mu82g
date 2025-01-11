# Shell Script Bug: Silent Failure on Empty Input File

This repository demonstrates a common, yet subtle bug in shell scripting: silent failure when processing an empty file.  The script attempts to read and process lines from a file; however, it doesn't handle the case where the file is empty, leading to no error message and no processing.

## Bug Description
The `while` loop in `bug.sh` silently exits if the input file `my_file.txt` is empty.  This makes it difficult to debug, as there's no indication that the file was processed or not.

## Bug Solution
The `bugSolution.sh` file provides a corrected version.  It checks the file size before the loop to explicitly handle empty files.

## How to Reproduce
1.  Create an empty file named `my_file.txt`.
2.  Run `bug.sh`.  Observe that the script executes without errors, but also without processing anything.
3.  Run `bugSolution.sh`.  The script now correctly detects the empty file and prints a message indicating that no processing was done.