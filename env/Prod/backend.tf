terraform {
  
    required_version = ">= 1.0.0"

    
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "beltfstateprod"
    container_name       = "tfstatecontainer"
    key                  = "Prod.terraform.tfstate"
    
  }
}