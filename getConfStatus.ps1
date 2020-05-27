Select-String -Path "C:\Program Files\Zabbix Agent\zabbix_agentd.conf" -Pattern "activation" | Select Line | Format-List
