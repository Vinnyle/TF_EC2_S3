variable "key_name" {
  description = "Name of SSH Key"
  type        = string
}

variable "nsg_name" {
  description = "Name of security group"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "ec2_ami" {
  description = "AMI of EC2 Instance"
  type = string
}

variable "ec2_instance_name" {
  description = "Name of the EC2 Instance"
  type        = string
}