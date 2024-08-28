az vm extension set \
  --name AzureMonitorWindowsAgent \
  --publisher Microsoft.Azure.Monitor \
  --vm-name vm-windows11 \
  --resource-group RG-SC-MONITORING-VM \
  --enable-auto-upgrade true \
  --settings '{"authentication":{"managedIdentity":{"identifier-name":"mi_res_id","identifier-value":"/subscriptions/ec907711-acd7-4191-9983-9577afbe3ce1/resourceGroups/rg-sc-monitoring-vm/providers/Microsoft.ManagedIdentity/userAssignedIdentities/vmw11-monitoring"}}}'