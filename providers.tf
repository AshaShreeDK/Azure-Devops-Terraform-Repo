terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "AshaRG"
    storage_account_name = "dkterraformstate"
    container_name       = "terraformstatefile"
    key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  # Configuration options
  features {}

}
