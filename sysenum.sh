#!/bin/sh

# Set colour variables
Reset_Colour='\033[0m'
Red='\033[1;31m'

# Used to separate the output from each command
SEPARATOR="--------------------------------------------------------------------------------"

# Gets the username of the current user
printf "${Red}$SEPARATOR${Reset_Colour}\n Username:\n$(whoami)\n"

# Gets the hostname of the machine
printf "${Red}$SEPARATOR${Reset_Colour}\n Hostname:\n$(hostname)\n"

# Lists the kernel version of the Linux that is running on the machine
printf "${Red}$SEPARATOR${Reset_Colour}\n Kernel:\n$(uname -a)\n"

# Gets the Linux version
printf "${Red}$SEPARATOR${Reset_Colour}\n Linux Version:\n$(lsb_release -a)\n"

# Gets the kernel version and compiler version that is installed
printf "${Red}$SEPARATOR${Reset_Colour}\n Kernel Version and Compilers:\n$(cat /proc/version)\n"

# Lists the processes for the current shell
printf "${Red}$SEPARATOR${Reset_Colour}\n Processes for current shell:\n$(ps)\n"

# Lists all processes currently running for the current user
printf "${Red}$SEPARATOR${Reset_Colour}\n All Processes:\n$(ps -A)\n"

# Shows environment variables
printf "${Red}$SEPARATOR${Reset_Colour}\n Environment Variables:\n$(env)\n"

# Shows the system path variable
printf "${Red}$SEPARATOR${Reset_Colour}\n System Path:\n$PATH\n"

# Shows the current working directory
printf "${Red}$SEPARATOR${Reset_Colour}\n Current Directory:\n$(pwd)\n"

# Shows all files in the current working directory, including hidden files
printf "${Red}$SEPARATOR${Reset_Colour}\n All Files in Current Directory:\n$(ls -la)\n"

# Shows the user privilege levels
printf "${Red}$SEPARATOR${Reset_Colour}\n User's Privilege Level:\n$(id)\n"

# Shows the contents of the /etc/passwd file
printf "${Red}$SEPARATOR${Reset_Colour}\n /etc/passwd Contents:\n$(cat /etc/passwd)\n"

# Shows the 'real' users that have a /home/<username> directory
printf "${Red}$SEPARATOR${Reset_Colour}\n Real Users:\n$(cat /etc/passwd | grep home)\n"

# Shows the network interfaces
printf "${Red}$SEPARATOR${Reset_Colour}\n Network Interfaces:\n$(ifconfig)\n"

# Shows mounted devices
printf "${Red}$SEPARATOR${Reset_Colour}\n Mounted Devices:\n$(lsblk)\n"

# Shows the contents of the /etc/hosts file
printf "${Red}$SEPARATOR${Reset_Colour}\n Hosts File Contents:\n$(cat /etc/hosts)\n"

# Gets all current listening ports 
printf "${Red}$SEPARATOR${Reset_Colour}\n All Listening Ports:\n$(netstat -a)\n"

# Lists the current connections including their PID
printf "${Red}$SEPARATOR${Reset_Colour}\n List Connections with PID:\n$(netstat -tp)\n"

# Shows all files with an SUID bit that can be run with higher privileges than the current user
printf "${Red}$SEPARATOR${Reset_Colour}\n Show files with SUID bit:\n$(find / -perm -u=s -type f 2>/dev/null)\n"
