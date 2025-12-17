variable "law_name" {}
variable "location" {}
variable "rg_name" {}
variable "sku" {}
variable "retention_in_days" {
    type = number
    default = 30
}