

provider "aws" {
  region = "eu-west-1"
}

data "aws_ami" "image" {
  most_recent = true
  filter {
    name = "name"
    values = ["amzn-ami-hvm-????.??.?.????????-x86_64-gp2"]
  }
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
  owners = ["amazon"]
}

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.image.id}"
  instance_type = "t2.micro"

  tags {
    Name = "WebServer-${terraform.workspace}"
  }
}

output "instance_ip" {
  value = "${aws_instance.web.public_ip}"
}




