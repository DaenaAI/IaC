variable "environment" { type = string, default = "dev" }
variable "network_cidr" { type = string, default = "10.30.0.0/16" }
variable "replicas" { type = number, default = 2 }
locals { prefix = "novashop-${var.environment}" }
resource "terraform_data" "network" { input = { name = "${local.prefix}-network", cidr = var.network_cidr } }
resource "terraform_data" "app" { input = { name = "${local.prefix}-app", network_id = terraform_data.network.id, replicas = var.replicas } }
# Mission : créer modules/network, modules/app et environments/dev.
