
output "ec2_instance_id" {
  value = aws_instance.ec2_instance.id
}

output "vpc_id" {
  value = aws_vpc.ec2_vpc.id
}

output "subnet_id" {
  value = aws_subnet.ec2_subnet.id
}

output "security_group_name" {
  value = aws_security_group.ec2_nsg.name
}
output "security_group_id" {
  value = aws_security_group.ec2_nsg.id
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "instance_arn" {
  value = aws_instance.ec2_instance.arn
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}
