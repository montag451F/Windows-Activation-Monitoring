PowerShell.exe -ExecutionPolicy Bypass -File C:\zabbix\bin\win64\GetWinActivationStatus.ps1 | %{ $_.Split(':')[1]; } | ForEach-object { $_.TrimStart(" ") } 2> $null > C:\zabbix\bin\win64\activation.txt