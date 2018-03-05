

locals {
  name = "kevin"
}

output "my_name" {
  value = "${local.name}"
}

