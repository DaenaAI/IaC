variable "environment" {
  type    = string
  default = "dev"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environment doit être dev, staging ou prod."
  }
}
variable "network_cidr" { type = string, default = "10.20.0.0/16" }
variable "subnet_cidr"  { type = string, default = "10.20.10.0/24" }
variable "instance_type" { type = string, default = "small" }
