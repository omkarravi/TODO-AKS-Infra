module "rg" {
  source   = "../../modules/azurerm_rg"
  rg_name = var.rg_name
  location = var.location
}

module "log_analytics" {

  source   = "../../modules/azurerm_log_analytics"
  law_name = var.law_name
  location = module.rg.location
  rg_name  = module.rg.rg_name
  sku      = var.sku
}

module "vnet" {
  source          = "../../modules/azurerm_vnet"
  vnet_name       = var.vnet_name
  address_space   = var.vnet_cidr
  subnet_name     = var.subnet_name
  subnet_prefixes = var.subnet_cidr
  rg_name         = module.rg.rg_name
  location        = module.rg.location
}

module "acr" {
  source         = "../../modules/azurerm_acr"
  acr_name       = var.acr_name
  rg_name        = module.rg.rg_name
  location       = module.rg.location
  sku            = var.acr_sku
  admin_enabled  = false
}


module "aks" {
  source      = "../../modules/azurerm_aks"
  aks_name    = var.aks_name
  location    = module.rg.location
  rg_name     = module.rg.rg_name
  node_count   = var.node_count
  vm_size     = var.vm_size

   dns_prefix       = var.dns_prefix
   subnet_id        = module.vnet.subnet_id
   log_analytics_id = module.log_analytics.id

   network_plugin = var.network_plugin
   service_cidr   = var.service_cidr
   dns_ip         = var.dns_ip
}

