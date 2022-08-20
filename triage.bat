@echo off

rem setup environment
DIRECTORY = C:\Users\%CurrentUser%\%DATE%_%TIME%\
md %DIRECTORY%
cd %DIRECTORY%

rem output ipconfig data to a file
ipconfig /a >> ip.txt
echo >> ip.txt
echo >> ip.txt
echo Acquired: %TIME% on %DATE$ >> ip.txt

rem output running processes to a file
tasklist >> tasklist.txt
echo >> tasklist.txt
echo >> tasklist.txt
echo Acquired: %TIME% on %DATE$ >> tasklist.txt

rem output running processes and the associated binary to a file
echo Verify any files running out of /tmp/ or /Downloads/ >> full_tasklist.txt
echo >> full_tasklist.txt
echo >> full_tasklist.txt
wmic process get description, executablepath >> full_tasklist.txt
echo >> full_tasklist.txt
echo >> full_tasklist.txt
echo Acquired: %TIME% on %DATE$ >> full_tasklist.txt

rem output a list of detailed services to a file
sc query | more >> services.txt
echo >> services.txt
echo >> services.txt
echo Acquired: %TIME% on %DATE$ >> services.txt

rem output a list of all users with local accounts on this system to a file
netuser >> users.txt
echo >> users.txt
echo >> users.txt
echo Acquired: %TIME% on %DATE$ >> users.txt

rem output a list of all users in the local admin group
net localgroup administrators >> admins.txt
echo >> admins.txt
echo >> admins.txt
echo Acquired: %TIME% on %DATE$ >> admins.txt

rem output a list of all open ports to a file
netstat -ab >> ports.txt
echo >> ports.txt
echo >> ports.txt
echo Acquired: %TIME% on %DATE$ >> ports.txt