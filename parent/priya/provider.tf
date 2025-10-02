terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "subhdushera"
    storage_account_name = "stgkamd"
    container_name       = "cntstate"
    key                  = "dev.terraform.tfstate"

  }
}
provider "azurerm" {
  features {}
  subscription_id = "8a5b9680-df5b-4e27-a4a2-ea7f28c1331c"
  
}
