output "aks_hosts" {
  value     = azurerm_kubernetes_cluster.cluster.kube_config.0.hosts
  sensitive = true
}

output "aks_kube_config" {
  value     = azurerm_kubernetes_cluster.cluster.kubeconfig_raw
  sensitive = true
}

output "aks_cluster_ca_ceritificate" {
  value     = azurerm_kubernetes_cluster.cluster.kube_config.0.cluster_ca_certificate
  sensitive = true
}

output "aks_cluster_client_key" {
  value     = azurerm_kubernetes_cluster.cluster.kube_config.0.client_key
  sensitive = true
}

output "aks_cluster_client_certificate" {
  value     = azurerm_kubernetes_cluster.cluster.kube_config.0.client_certificate
  sensitive = true
}
