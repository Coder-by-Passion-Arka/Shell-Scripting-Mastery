echo "UserName   and    HostName "
username=$(whoami) # Username
hostname=$(hostname) # Username
echo "$username@$hostname"
echo "=================================="

echo "Details about Operating System"
cat /etc/os-release # OS config
echo "=================================="

echo "Different Shells in the System"
cat /etc/shells # Differnt shells in the system
echo "=================================="

echo "Path of the current folder"
pwd # Path to the current folder
echo "=================================="