variable "aks_name" {
    type = string
}
variable "location" {
    type = string
}
variable "rg_name" {
    type = string
}
variable "node_count" {
    type = number
}
variable "vm_size" {
    type = string
}
variable "subnet_id" {
    type = string
}
variable "log_analytics_id" {
    type = string
}
variable "dns_prefix" {
    type = string
}
variable "network_plugin" {
    type = string
}
variable "service_cidr" {
    type = string
}
variable "dns_ip" {
    type = string
}