

provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  region = "eu-west-2"
  alias  = "london"
}

resource aws_s3_bucket "ireland_bucket" {
  bucket = "kevholditch-ireland"
}

resource aws_s3_bucket "london_bucket" {
  bucket   = "kevholditch-london"
  provider = "aws.london"
}

