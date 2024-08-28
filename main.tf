# Appel des fichiers séparés pour le réseau, la VM, le Log Analytics, etc.


module "network" {
  source              = "./network"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "vm" {
  source               = "./vm"
  network_interface_id = module.network.network_interface_id
  location             = var.location
  resource_group_name  = var.resource_group_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  vm_name              = var.vm_name
}

module "log_analytics" {
  source              = "./log_analytics"
  location            = var.location
  resource_group_name = var.resource_group_name

}


