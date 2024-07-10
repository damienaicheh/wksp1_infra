terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.107.0"
    }

    azapi = {
      source  = "azure/azapi"
      version = "1.14.0"
    }
  }

  backend "local" {}
  # backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

provider "azapi" {
  # Configuration options
}
