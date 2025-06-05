provider "local" {}

resource "local_file" "nginx_config" {
  content  = "Fichier généré par Terraform - CYNA"
  filename = "/opt/cyna-devops/generated_by_terraform.txt"
}

terraform init
terraform apply
