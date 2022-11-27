resource "azurerm_kubernetes_cluster" "cluster" {
  name               = var.cluster-name
  location           = var.resource_group_location
  dns_prefix         = var.dns_prefix
  kubernetes_version = var.kubernetes_version

  default_node_pool {
    name       = "systempool"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.common_tags
}

resource "azurerm_kubernetes_cluster_node_pool" "pool_cluster" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1

  depends_on = [
    azurerm_kubernetes_cluster.cluster
  ]

  tags = var.common_tags
}
