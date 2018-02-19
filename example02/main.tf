
provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "kevholditch-myfirst-bucket"
}

resource "aws_iam_policy" "my_bucket_policy" {
  name = "my-bucket-policy"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_s3_bucket.my_bucket.arn}"
      ]
    }
  ]
}
POLICY
}