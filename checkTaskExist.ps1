$taskName = "Activation Check"
$taskExists = Get-ScheduledTask | Where-Object {$_.TaskName -like $taskName }

if($taskExists) {
   exit 1 
} else {
   exit 0
}