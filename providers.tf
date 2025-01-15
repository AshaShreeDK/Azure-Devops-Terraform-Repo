terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "0.7.11"
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
