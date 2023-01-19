output "instance_ip_public" {
  value = aws_instance.Public-ec2.public_ip
}
output "instance_ip_private" {
  value = aws_instance.Private-ec2.private_ip
}