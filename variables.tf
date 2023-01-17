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
  default     = ""
}

variable "bucket_name" {
  description = "Name of the S3 Bucket"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "Name of the SSH Key pair"  
  type = string
  default = ""
}

variable "nsg_name" {
  description = "Name of the Network security group"
  type = string
  default = ""
}

variable "vpc_name" {
  description = "Name of the VPC"
  type = string
  default = ""
}

variable "subnet_name" {
  description = "Name of the subnet"
  type = string
  default = ""
}

variable "ec2_instance_name" {
  description = "Name of the EC2 Instance"
  type  = string
  default = ""
}
