resource "aws_instance" "Public-ec2" {
    ami = var.ec2["image"]
    instance_type = var.ec2["type"]
    subnet_id = aws_subnet.subnet_az1[0].id
    security_groups = [aws_security_group.lab.id]
    associate_public_ip_address = true
    tags = {
      Name = "Public-ec2"
    }
    user_data = <<-EOF
          #!/bin/bash
          sudo apt update -y
          sudo apt install apache2 -y
          echo "*** Completed Installing apache2"
      EOF
}
resource "aws_instance" "Private-ec2" {
    ami = var.ec2["image"]
    instance_type = var.ec2["type"]
    subnet_id = aws_subnet.subnet_az1[1].id
    security_groups = [aws_security_group.lab.id]
    tags = {
      Name = "Private-ec2"
    }
     user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install apache2 -y
    echo "*** Completed Installing apache2"
    EOF
}