# terraform-do-k8saas
This Terraform module can be used to deploy a self-contained Kubernetes cluster based in Digital Ocean based on their managed Kubernetes offering.

## Input variables
| Name | Decription | Type | Default | Required |
| ---- | ---------- | ---- | ------- | -------- |
| name | Used as name / prefix for all supported object names | string | - | yes |
| worker_count | Number of Kubernetes nodes required | string | 1 | no |
| tshirt_size | Size of the worker nodes, see below for more details | string | s | no |
| region | Digital ocean region the cluster should be created in | string | fra1 | no |

### T-Shirt sizes
This variable is used to abstracht the complexity of DO instances and allow to choose the number of vCPU and amount of memory required by a simple tshirt size.

| Size | vCPUs | Memory |
| ---- | ----- | ------ |
| S | 1 | 2GB |
| M | 2 | 4GB |
| L | 4 | 8GB |

## Output variables
| Name | Decription |
| ---- | ---------- |
| kube_config | Pre-configured kube config file to connect to the cluster. |
| cluster_api_url | URL to connect to the Kubernetes cluster API |

## Example
```hcl
module "terraform-aws-k8saas" {
  source        = "github.com/timarenz/terraform-aws-k8saas"
  name          = "tims-cluster"
  worker_count  = 3
  tshirt_size   = "m"
  region        = "ams1"
}
```

## Authors
Created and maintaned by [Tim Arenz](https://github.com/timarenz)

## License
[MIT](LICENSE)