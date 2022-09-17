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

  subscription_id = "7c6cf4f2-b5e5-433c-8e68-4ba91fb2d6c9"
  client_id       = "56acd4a3-79e3-4246-817b-58f592275d9d"
  client_secret   = var.client_secret
  tenant_id       = "16e04e4f-42c3-445b-9884-605e3bacbeee"
}
