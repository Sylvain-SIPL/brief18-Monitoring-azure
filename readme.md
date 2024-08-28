# Déploiement d'une VM Windows 11 avec Monitoring sur Azure via Terraform

## Description
Ce projet Terraform déploie une VM Windows 11 sur Azure avec un Log Analytics Workspace.
## Structure des fichiers
- `main.tf` : Fichier principal pour orchestrer les différents modules.
- `network/` : Module pour la configuration réseau.
- `vm/` : Module pour la création de la VM.
- `log_analytics/` : Module pour le Log Analytics Workspace
- `variables.tf` : Variables globales partagées entre les modules.
- `providers.tf` : Configuration du fournisseur.
- `secrets.tfvars` : Contient les valeurs sensibles (comme les mots de passe).

## Prérequis
- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) installé.
- Un compte Azure avec les droits nécessaires pour créer des ressources.
- [Azure CLI](https://learn.microsoft.com/fr-fr/cli/azure/install-azure-cli) installé et connecté via `az login`.

## Configuration
1. Clonez ce dépôt.
2. Modifiez `variables.tf` pour ajuster les variables selon les besoins.
3. Modifiez `secrets.tfvars` pour la gestion du mot de passe administrateur pour la VM.
4. Initialisez Terraform :

 
 ## Annexe 
- [Règles de collecte de données (DCR) dans Azure Monitor](https://learn.microsoft.com/fr-fr/azure/azure-monitor/essentials/data-collection-rule-overview)
- [Que sont les alertes Azure Monitor ?](https://learn.microsoft.com/fr-fr/azure/azure-monitor/alerts/alerts-overview)
- [Create a dashboard in the Azure portal](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboards)
- [Présentation de Log Analytics dans Azure Monitor](https://learn.microsoft.com/fr-fr/azure/azure-monitor/logs/log-analytics-overview)
- [Kusto Query Language (KQL) overview](https://learn.microsoft.com/en-us/kusto/query/?view=microsoft-fabric)

