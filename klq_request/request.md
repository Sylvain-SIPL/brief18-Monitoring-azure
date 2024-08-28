## affiche ensemble des metrics 

InsightsMetrics
| where Computer == 'vm-windows11'


## pourcentage utilisation processeur

InsightsMetrics
| where TimeGenerated > ago(24h)
| where Name == "UtilizationPercentage"
| summarize avg(Val) by bin(TimeGenerated, 5m), Computer //split up by computer
| render timechart

## memoire disponible 

InsightsMetrics
| where TimeGenerated > ago(24h)
| where Name == "AvailableMB"
| summarize avg(Val) by bin(TimeGenerated, 5m), Computer 
| render timechart

## espace disque disponible 

InsightsMetrics
| where TimeGenerated > ago(24h)
| where Name == "FreeSpacePercentage"
| summarize avg(Val) by bin(TimeGenerated, 5m), Computer 
| render timechart 

## Vm disponibilité 

Heartbeat
| summarize dcount(ComputerIP) by bin(TimeGenerated, 8h)
| render timechart





