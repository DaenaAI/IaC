locals { name_prefix = "novashop-${var.environment}" }

# TODO : terraform_data.network  { name, cidr }
# TODO : terraform_data.subnet   { name, network_id, cidr }
# TODO : terraform_data.security { name, network_id, ingress_ports = [80,443] }
# TODO : terraform_data.compute  { name, subnet_id, security_id, instance_type }
