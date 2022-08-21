#! /bin/bash

DIRECTORY=`date +%m-%d-%Y`
mkdir ${DIRECTORY}
cd ${DIRECTORY}

# output ipconfig to a file
ifconfig >> ip.txt
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> ip.txt

# output running processes to a file
ps >> processes.txt
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> processes.txt

# output a list of users 
cat /etc/passwd | cut -d: -f1 >> users.txt 
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> users.txt