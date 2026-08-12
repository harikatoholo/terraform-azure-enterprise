terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "harikatfstateprod001"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    subscription_id = "9c8db0b8-c207-4a8d-ae98-76f0f7094e56"
  
  }
}