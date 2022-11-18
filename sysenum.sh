#!/bin/sh

# Used to separate the output from each command
SEPARATOR="\n\e[1;31m--------------------------------------------------------------------------------\e[0m"

# Gets the username of the current user
echo "$SEPARATOR\n\e[1;33;4mUsername:\e[0m\n$(whoami)"

# Gets the hostname of the machine
echo "$SEPARATOR\n\e[1;33;4mHostname:\e[0m\n$(hostname)"

# Lists the kernel version of the Linux that is running on the machine
echo "$SEPARATOR\n\e[1;33;4mKernel:\e[0m\n$(uname -a)"

# Gets the Linux version
echo "$SEPARATOR\n\e[1;33;4mLinux Version:\e[0m\n$(lsb_release -a)"

# Gets the kernel version and compiler version that is installed
echo "$SEPARATOR\n\e[1;33;4mKernel Version and Compilers:\e[0m\n$(cat /proc/version)"

# Lists the processes for the current shell
echo "$SEPARATOR\n\e[1;33;4mProcesses for current shell:\e[0m\n$(ps)"

# Lists all processes currently running for the current user
echo "$SEPARATOR\n\e[1;33;4mAll Processes:\e[0m\n$(ps -A)"

# Shows the process tree
echo "$SEPARATOR\n\e[1;33;4mProcess Tree:\e[0m\n$(ps axjf)"

# Shows all processes currently running for ALL users
echo "$SEPARATOR\n\e[1;33;4mProcesses for all users:\e[0m\n$(ps aux)"

# Shows environment variables
echo "$SEPARATOR\n\e[1;33;4mEnvironment Variables:\e[0m\n$(env)"

# Shows the system path variable
echo "$SEPARATOR\n\e[1;33;4mSystem Path:\e[0m\n$PATH"

# Shows the current working directory
echo "$SEPARATOR\n\e[1;33;4mCurrent Directory:\e[0m\n$(pwd)"

# Shows all files in the current working directory, including hidden files
echo "$SEPARATOR\n\e[1;33;4mAll Files in Current Directory:\e[0m\n$(ls -la)"

# Shows the user privilege levels
echo "$SEPARATOR\n\e[1;33;4mUser's Privilege Level:\e[0m\n$(id)"

# Shows the contents of the /etc/passwd file
echo "$SEPARATOR\n\e[1;33;4m/etc/passwd Contents:\e[0m\n$(cat /etc/passwd)"

# Shows the 'real' users that have a /home/<username> directory
echo "$SEPARATOR\n\e[1;33;4mReal Users:\e[0m\n$(cat /etc/passwd | grep home)"

# Shows the network interfaces
echo "$SEPARATOR\n\e[1;33;4mNetwork Interfaces:\e[0m\n$(ifconfig)"

# Shows mounted devices
echo "$SEPARATOR\n\e[1;33;4mMounted Devices:\e[0m\n$(df -h)"

# Shows the contents of the /etc/hosts file
echo "$SEPARATOR\n\e[1;33;4mHosts File Contents:\e[0m\n$(cat /etc/hosts)"

# Gets all current listening ports 
echo "$SEPARATOR\n\e[1;33;4mAll Listening Ports:\e[0m\n$(netstat -a)"

# Lists the current connections including their PID
echo "$SEPARATOR\n\e[1;33;4mList Connections with PID:\e[0m\n$(netstat -tp)"

# Shows all files with an SUID bit that can be run with higher privileges than the current user
echo "$SEPARATOR\n\e[1;35;4mShow files with SUID bit:\e[0m\n$(find / -perm -u=s -type f 2>/dev/null)$(SEPARATOR)"
