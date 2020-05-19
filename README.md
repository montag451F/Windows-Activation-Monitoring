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
ConfCheck.txt - нужен для проверки строки UserParameter в конфиге заббикса
getConfStatus.ps1 - грепает конфиг заббикса на предмет строки UserParameter
trimConfStatus.ps1 - использует getConfStatus.ps1, убирает лишние данные поша, сохраняет результат в ConfCheck.txt
evaluateConf.ps1 - берет данные из ConfCheck.txt и сравнивает эталоном, если совпадение есть, то выдает exit 1, в противном случае exit 0


Параметр zabbix для проверки активации:
UserParameter=activation.check,powershell.exe -executionpolicy bypass -command C:\WindowsActivationStatus\evaluateGetActivation

PS: Содержимое этой директории должно быть скопировано в C:\WindowsActivationStatus
