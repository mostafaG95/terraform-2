resource "aws_internet_gateway" "mostafa_gateway" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = "mostafa_gateway"
    }
}
