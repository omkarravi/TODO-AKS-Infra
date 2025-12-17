terraform {

    required_version = ">= 1.0.0"

required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = ">= 2.0.0"
    }
}
}

provider "azurerm" {
  features {}
  subscription_id = "f4a74092-065d-4b65-ac13-13a156a06eb6"

}