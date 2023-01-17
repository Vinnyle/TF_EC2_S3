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

variable "ec2_arn" {
  description = "ARN of the EC2 Instance"
  type = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type = map(string)
  default = {}
}