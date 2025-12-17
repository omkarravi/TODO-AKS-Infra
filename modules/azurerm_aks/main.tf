resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name           = "system"
    node_count     = var.node_count
    vm_size        = var.vm_size
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  oms_agent {
    log_analytics_workspace_id = var.log_analytics_id
  }
  network_profile {
  network_plugin = var.network_plugin

  service_cidr   = var.service_cidr
  dns_service_ip = var.dns_ip

  outbound_type  = "loadBalancer"
}
}