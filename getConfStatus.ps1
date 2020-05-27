Select-String -Path C:\zabbix\conf\zabbix_agentd.win.conf -Pattern "activation" | Select Line | Format-List
