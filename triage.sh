#! /bin/bash

$DIRECTORY ./{date +f %m-%d-%Y}/
mkdir ${DIRECTORY}
cd ${DIRECTORY}

# output ipconfig to a file
ip -A >> ip.txt
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> ip.txt

# output running processes to a file

# output a list of users 
cat /etc/passwd | cut -d: -f1 >> users.txt 
echo "\n\nAcquired: (date +%r) on (date +f %m-%d-%Y)" >> users.txt