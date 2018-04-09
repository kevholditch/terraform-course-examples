provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "kevholditch-${count.index}"
  count = 3
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "kevholditch-next-bucket"

  depends_on = ["aws_s3_bucket.bucket"]
}
