variable "aws_region" { type = string, default = "eu-west-3" }
variable "environment" { type = string, default = "dev" }
provider "aws" {
  region = var.aws_region
  default_tags { tags = { Project = "NovaShop", Environment = var.environment, ManagedBy = "Terraform", Training = "true" } }
}
