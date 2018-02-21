

provider "aws" {
  region = "eu-west-2"
}

locals {
  bucket_prefix = "kevholditch"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${local.bucket_prefix}-first-bucket"
}
