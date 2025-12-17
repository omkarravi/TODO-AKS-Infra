variable "rg_name" {
    type = string
}
variable "location" {
    type = string
}
variable "vnet_name" {
    type = string
}
variable "vnet_cidr" { type = list(string) }
variable "subnet_name" {
    type = string
}
variable "subnet_cidr" { type = list(string) }
variable "acr_name" {
    type = string
}
variable "aks_name" {
    type = string
}
variable "dns_prefix" {
    type = string
}
variable "law_name" {
    type = string
}
variable "acr_sku" {
    type = string
}
variable "node_count" {
    type = number
}
variable "vm_size" {
    type = string
}
variable "sku" {
    type = string
}
variable "network_plugin" {
    type = string
}
variable "service_cidr" {
  description = "Service CIDR for AKS"
  type        = string
  default     = "10.0.0.0/16"
}

variable "dns_ip" {
  description = "DNS service IP for AKS"
  type        = string
  default     = "10.0.0.10"
}