$a=gc C:\WindowsActivationStatus\ConfCheck.txt
if ($a -eq "UserParameter=activation.check,powershell.exe -executionpolicy bypass -command C"){
    exit 1
}
else{
    exit 0
}
