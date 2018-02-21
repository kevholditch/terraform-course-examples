

provider "aws" {
  region = "eu-west-2"
}

locals {
  name = "kevin"
}

output "my_name" {
  value = "${local.name}"
}

