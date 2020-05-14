$a=gc C:\zabbix\bin\win64\activation.txt
if ($a -eq "Licensed"){
    Write-Host "0"
}
else{
    Write-Host "1"
}