variable "resource_group_name" {
  description = "groupe de ressources."
  default     = "rg-sc-monitoring-vm"
}

variable "location" {
  description = "localisation."
  default     = "west europe"
}

variable "vm_name" {
  description = "Nom vm."
  default     = "vm-windows11"
}

variable "admin_username" {
  description = "Nom d'utilisateur administrateur."
  default     = "adminuser"
}

variable "admin_password" {
  description = "Mot de passe administrateur."
  type        = string
}




