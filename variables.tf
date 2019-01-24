variable "region" {
  default = "fra1"
}

variable "name" {}

variable "worker_count" {
  default = 1
}

variable "tshirt_size" {
  default = "s"
}

locals {
  vm_tshirt_size = {
    s = "s-1vcpu-2gb"
    m = "s-2vcpu-4gb"
    l = "s-4vcpu-8gb"
  }
}
