#! /bin/bash

date=`date +%m-%d-%Y`
DIRECTORY = ~/Desktop/Scans/${DIRECTORY}
mkdir -p $DIRECTORY
cd $DIRECTORY

# output ipconfig to a file
# using ifconfig instead of ip a for compatibility
if ip a; then
    ip a >> ip.txt
else
    ifconfig >> ip.txt
fi
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> ip.txt

#open ports
netstat -tulpn >> ports.txt
echo "Acquired: %(DATE)" >> ports.txt

# output running processes to a file
ps >> processes.txt
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> processes.txt

# output a list of users 
cat /etc/passwd | cut -d: -f1 >> users.txt 
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> users.txt