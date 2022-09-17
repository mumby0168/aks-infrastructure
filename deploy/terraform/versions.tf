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
  client_id       = "61a01546-d1ab-4f21-81e6-f156c26d1132"
  client_secret   = var.CLIENT_SECRET
  tenant_id       = "16e04e4f-42c3-445b-9884-605e3bacbeee"
}
