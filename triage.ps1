# setup environment
$USER = $env:UserName
mkdir C:\Users\$USER\%DATE%_%TIME%\
Set-Location %DIRECTORY%

# output ipconfig data to a file
Get-NetIPAddress | Add-Content "IP.txt"


# output a list of all users with local accounts on this system to a file
netuser >> users.txt
Write-Output Acquired: %TIME% on %DATE$ | Add-Content "users.txt"

# output a list of detailed services to a file
Get-Service | Where-Object Status -eq "Running" | Out-GridView | Add-Content "services.txt"

# output a list of rinning services by priority to a file
Get-Process | Format-Table -View priority | Add-Content "services_priority.txt"

# output a list of scheduled tasks to a file
Get-ScheduledTask | Add-Content "schedule.txt"