variable "vpc" {
  type        = string
  description = "cidr"
  default = "10.0.0.0/16"
}
variable "subnets" {
  type        = list
  description = "subnets-cidr "
  default = ["10.0.0.0/24","10.0.1.0/24"]
}
variable "inbound" {
  type        = string
  description = "inbound"
  default = "0.0.0.0/0"
}

variable "AZ" {
  type        = string
  description = "availability zone"
  default = "us-east-1a"
}
variable "security_group-ports"{
  type        = map
  description = "ports"
  default = {
        ssh = 22
        http = 80
        egress = 0

  }
}
variable "security_group-protocol"{
  type        = map(string)
  description = "the protocols of security group"
  default = {
        "ingress" = "tcp"
        "egress" = "-1"

  }
}
variable "ec2" {
  type        = map(string)
  description = "AMI "
  default = {
    "image" = "ami-06878d265978313ca"
    "type" = "t2.micro"
  }
}
