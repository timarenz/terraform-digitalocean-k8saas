resource "digitalocean_kubernetes_cluster" "this" {
  name    = "k8s-${var.name}"
  region  = "${var.region}"
  version = "1.12.1-do.2"

  node_pool {
    name       = "k8s-woker-pool-${var.name}"
    size       = "${lookup(local.vm_tshirt_size, var.tshirt_size)}"
    node_count = "${var.worker_count}"
  }
}
