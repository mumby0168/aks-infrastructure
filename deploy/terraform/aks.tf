resource "azurerm_resource_group" "mumby_aks" {
  name     = "rg-mumby-aks"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "mumby" {
  name                = "mumby-aks"
  location            = azurerm_resource_group.mumby_aks.location
  resource_group_name = azurerm_resource_group.mumby_aks.name
  dns_prefix          = "mumby-aks"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_sku
  }

  identity {
    type = "SystemAssigned"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.mumby.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.mumby.kube_config_raw
  sensitive = true
}