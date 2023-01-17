# IF YOU WANT TO USE ENV VARIABLES COMMENT THESE LINES :
variable "aws_session_token" {
  description = "AWS Session Token"
  type = string
  default = "IQoJb3JpZ2luX2VjENv//////////wEaCXVzLWVhc3QtMSJIMEYCIQCqhpvDZwSLu1DqbkfpN7JVlcVIr820yEMg+EmvVvGQzQIhANUNvwEG0yYPMTWUIvXxKPGYey2mehCsDringQO6GlkDKusBCEQQABoMNjg2ODcyMzI3MTkxIgzXXbgwSyLDpHpB+skqyAGB3nDtI/4DSz+Ol0tO8JSpJunZS3wJCJeB1HVddxdt5jEurY9vuRfEM9GIk546ndiSPSpE8enpzoW3/cX/9cy3Jnv5CnTiEhmmGOLQIkL4c496xzQGVwG0jRST5SeCNr7JalVz1HOE7MsUH0GqB2Ot4pdTptBorO6xEAa/SHP1FokO1KmXT/bE3oz2zbZx9yczfn3cSINmTMl6RdfAN6gw06WCNzkF5Z5EyYuRQ1oZXdXVtuxfpBPlpWrg47CiBnmxgRRpTbCgHjD4gJqeBjqXAQQJwVWRpzxAN2srV89RMYiY0+7TuBXiM07r3coA5JzriesTOAr0RHRdBww5QtSofZNQWDmigrppKzUCQmkC29NrFqtquPu75bqWUzy5REwo6dckDjDVrY3zOXtEGXhXIfkAJVQoGcz7KuvaJa50K6iqdKU0C+0RcEJomk+OJPW5/A732uR2sYueXsGzexFRGVVjewotl/I="
}

variable "aws_access_key" {
  description = "AWS Acces Key"
  type = string
  default = "ASIAZ73GH6QL7XN4KCMT"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type = string
  default = "2o/GewSxhN2fb1T7EFGTAh8dunibXuSkwJX4jkkd"
}
# CHANGE THE "default" FIELD WITH YOUR VALUES
#
variable "user_arn" {
  description = "ARN of the AWS User"
  type        = string
  default     = "::686872327191:user/adm-tf_01"
}

variable "bucket_name" {
  description = "Name of the S3 Bucket"
  type        = string
  default     = "s3-grp-40-test"
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
  default = "vpc-400257432"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type = string
  default = "subnet-grp-40"
}

variable "ec2_instance_name" {
  description = "Name of the EC2 Instance"
  type  = string
  default = "ec2-grp-40"
}