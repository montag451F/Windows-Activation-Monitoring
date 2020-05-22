if (Test-Path C:\WindowsActivationStatus\restart -PathType Leaf){
    exit 1
}
else{
    exit 0
}