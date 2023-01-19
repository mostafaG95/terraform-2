resource "aws_security_group" "lab" {
    name = "lab"
    description = "Allow inbound traffic"
    vpc_id = aws_vpc.vpc.id

    ingress {
        from_port        = var.security_group-ports["ssh"]
        to_port          = var.security_group-ports["ssh"]
        protocol         = var.security_group-protocol["ingress"] 
        cidr_blocks      = [var.inbound]
    }

    ingress {
        from_port        = var.security_group-ports["http"]
        to_port          = var.security_group-ports["http"]
        protocol         = var.security_group-protocol["ingress"]
        cidr_blocks      = [var.inbound]
    }

    egress {
        from_port        = var.security_group-ports["egress"]
        to_port          = var.security_group-ports["egress"]
        protocol         = var.security_group-protocol["egress"]
        cidr_blocks      = [var.inbound]
    }
}