# Windows-Activation-Monitoring
Obtain windows activation status via powershell and send to zabbix server

GetWinActivationStatus.ps1 - запрашивает у системы инфу об ативации
start_GetActivation.ps1 - выполняет GetWinActivationStatus.ps1, убирает лишнюю инфу, записывает полученную
в результате строку в файл activation.txt
start_GetActivation.bat - запускает start_GetActivation.ps1
register_ActivationCheck.ps1 - регистрирует задачу в планировщике на переодический запуск start_GetActivation.bat
start_register_ActivationCheck.bat - запускает register_ActivationCheck.ps1
evaluateGetActivation.ps1 - берет строку из activation.txt и сравнивает с эталонной, отдает 0 или 1,
используется забиксом
activation.txt - содержит в себе статус активации в виде строки

В конфиге заббикса:
UserParameter=activation.check,powershell.exe -executionpolicy bypass -command "C:\WindowsActivationStatus\evaluateGetActivation"

PS: Содержимое этой директории должно быть скопировано в C:\WindowsActivationStatus
