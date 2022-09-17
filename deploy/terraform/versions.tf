terraform {

  cloud {
    organization = "mumby-developments"

    workspaces {
      name = "aks-infrastructure"
    }
  }

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.28.1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.23.0"
    }
  }

}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
