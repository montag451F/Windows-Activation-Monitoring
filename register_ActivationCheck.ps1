##Scheduled Task for updataing extension list daily
$Trigger= New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 5) -RepetitionDuration (New-TimeSpan -Days (365 * 20))
$User= "NT AUTHORITY\SYSTEM"
$Action= New-ScheduledTaskAction -Execute "C:\WindowsActivationStatus\start_GetActivation.bat"


Register-ScheduledTask -TaskName "Activation Check" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest –Force
