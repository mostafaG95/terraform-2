vpc = "10.0.0.0/16"

subnets = ["10.0.0.0/24","10.0.1.0/24"]

inbound = "0.0.0.0/0"

AZ = "us-east-1a"

security_group-ports = {
        ssh = 22
        http = 80
        egress = 0
    }

security_group-protocol = {
        "ingress" = "tcp"
        "egress" = "-1"
    }

ec2 = {
    "image" = "ami-06878d265978313ca"
    "type" = "t2.micro"
  }