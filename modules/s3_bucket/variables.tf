variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type = string
}

variable "vpc_name" {
  description = "Name of the VPC."
  type = string
}

variable "user_arn" {
  description = "ARN of the AWS User"
  type = string
}

variable "ec2_public_ip" {
  description = "Public IP of EC2 Instance"
  type = string
}

variable "ec2_arn" {
  description = "ARN of the EC2 Instance"
  type = string
}

variable "tags" {
  description = "Tags to set on ressources"
  type = map(string)
  default = {}
}