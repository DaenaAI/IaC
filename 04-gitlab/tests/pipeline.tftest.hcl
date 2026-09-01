run "release_contract" { command = plan
 assert { condition = terraform_data.release.input.application == "novashop", error_message = "Application inattendue." } }
