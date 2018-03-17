

variable "my_name" {}
variable "instance_size" {}

variable "instance_size_map" {
  type = "map"
  default = {
    dev	 = "t2.micro",
    test = "t2.medium",
    prod = "m4.large"
  }
}



