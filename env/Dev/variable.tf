variable "rg_name" {}
variable "location" {}
variable "vnet_name" {}
variable "vnet_cidr" { type = list(string) }
variable "subnet_name" {}
variable "subnet_cidr" { type = list(string) }
variable "acr_name" {}
variable "aks_name" {}
variable "dns_prefix" {}
variable "law_name" {}
variable "acr_sku" {}
variable "node_count" {}
variable "vm_size" {}
variable "sku" {}
variable "network_plugin" {}
variable "service_cidr" {}
variable "dns_ip" {}