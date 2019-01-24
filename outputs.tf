output "cluster_api_url" {
  value = "${digitalocean_kubernetes_cluster.this.kube_config.0.host}"
}

output "kube_config" {
  value = "${digitalocean_kubernetes_cluster.this.kube_config.0.raw_config}"
}
