# SysEnum
A simple bash script that fetches and displays lots of system information to the terminal.

## What does it do?
SysEnum is used to fetch basic system information from a Linux system, including: username, hostname,
kernel version,Linux version, compilers installed, processes running, environment variables, user
privileges, contents of the /etc/hosts file and the /etc/passwd file, mounted devices, network 
interfaces, and plenty more...

This information from the system can be used either to simply found out more about the system you are
on, or for people doing CTF's or penetration testing to find crucial information that could lead to 
finding exploits for the system to use in Privilege Escallation.

## Complete list of what the script finds:
- Current user's username
- Hostname of the machine
- Kernel information
- Linux version
- Kernel version and compiler information
- Processes of the current shell
- All processes of the current user
- Process tree
- Processes for ALL users
- Environment variables
- System PATH variable
- Current working directory
- All files in current directory, including hidden files
- User privilege levels
- Contents of the /etc/passwd file
- Other users on the system
- Network interfaces
- Mounted devices
- Contents of the /etc/hosts file
- All current listening ports on the machine
- All current connections and their PID
- All files with a SUID bit that can be run with higher privileges than the current user

## Installing the tool
- First run **git clone https://github.com/acfirthh/SysEnum.git**
- Change directory into where you downloaded the tool **cd </path/to/folder>**
- Then run **chmod +x sysenum.sh** to make it executable
!(/images/chmod.png)
- Finally, run the script using the command **./sysenum.sh**
!(/images/run.png)
