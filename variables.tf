# IF YOU WANT TO USE ENV VARIABLES COMMENT THESE LINES :
variable "aws_session_token" {
  description = "AWS Session Token"
  type = string
  default = ""
}

variable "aws_access_key" {
  description = "AWS Acces Key"
  type = string
  default = ""
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type = string
  default = ""
}
# CHANGE THE "default" FIELD WITH YOUR VALUES
#
variable "user_arn" {
  description = "ARN of the AWS User"
  type        = string
  default     = "adm-tf_01"
}

variable "bucket_name" {
  description = "Name of the S3 Bucket"
  type        = string
  default     = "s3-grp-40"
}

variable "key_name" {
  description = "Name of the SSH Key pair"  
  type = string
  default = "my_ssh_key"
}

variable "nsg_name" {
  description = "Name of the Network security group"
  type = string
  default = "nsg-grp-40"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type = string
  default = "vpc-40257432"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type = string
  default = "subnet-grp-40"
}

variable "ec2_ami" {
  description = "AMI of EC2 Instance"
  type = string
  default = "ami-0b5eea76982371e91"
}

variable "ec2_instance_name" {
  description = "Name of the EC2 Instance"
  type  = string
  default = "ec2-grp-40"
}

