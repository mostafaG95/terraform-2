resource "aws_subnet" "subnet_az1" {
    vpc_id = aws_vpc.vpc.id
    count = length(var.subnets)
    availability_zone = var.AZ
    cidr_block = var.subnets[count.index]
    tags = {
        Name = "subnet us-east-1a"
    }
}


