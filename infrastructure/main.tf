terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.2.4"
}

provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestoracc"
  resource_group_name      = "myResourceGroup"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
