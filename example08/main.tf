

provider "aws" {
  region = "eu-west-1"
}

variable "tag_map" {
  type = "map"
  default = {
    dev	  = "dev-queue",
    test  = "test-queue",
    prod  = "prod-queue"
  }
}

variable "env_type" {}

variable "queue_name" {}

resource "aws_sqs_queue" "queue" {
  name = "${var.queue_name}"

  tags {
    environment_type = "${lookup(var.tag_map, var.env_type)}"
  }
}