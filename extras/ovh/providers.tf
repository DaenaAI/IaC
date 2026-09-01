variable "ovh_endpoint" { type = string, default = "ovh-eu" }
provider "ovh" { endpoint = var.ovh_endpoint }
