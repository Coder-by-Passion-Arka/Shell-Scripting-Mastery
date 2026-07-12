# List all files in a Linux directory including hidden (dot) files and directories
echo "============ ls -a ==============="
ls -a 
echo "=================================="

# List files and show permissions, user owner, group owner, last modified/created date
echo "============ ls -l =============="
ls -l
echo "=================================="

# List all files, and all the files inside of the directories (or just list the folder recursively)
echo "============ ls -R ==============="
ls -R
echo "=================================="

# List all files, sorted by file size
echo "============ ls -s ==============="
ls -s
echo "=================================="

# Sort in alphabetical order by file extension
echo "============ ls -x ==============="
ls -x
echo "=================================="

# Human readable - Size in MB or GB
echo "============ ls -h ==============="
ls -h
echo "=================================="

## Combination of commands

# List "all" files, in "human readable format" in long detailed format.
echo "===== ls -R | grep '.*\.txt'====="
ls -R | grep '.*\.txt'
echo "=================================="