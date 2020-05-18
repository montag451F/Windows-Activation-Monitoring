$a=gc C:\WindowsActivationStatus\activation.txt
if ($a -eq "Licensed"){
    Write-Host "0"
}
else{
    Write-Host "1"
}
