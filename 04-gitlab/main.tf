variable "environment" { type = string, default = "dev" }
resource "terraform_data" "release" { input = { application = "novashop", environment = var.environment } }
