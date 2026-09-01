variable "db_password" { type = string, default = "training-example-not-a-real-secret" }
resource "terraform_data" "app" {
  input = { name = "novashop-prod" }
  provisioner "local-exec" { command = "echo '${var.db_password}' > /tmp/novashop-secret.txt" }
}
resource "terraform_data" "app_copy" { input = { name = "novashop-prod" }, depends_on = [terraform_data.app] }
