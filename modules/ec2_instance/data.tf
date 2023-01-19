data "aws_ami" "ec2_instance" {
  most_recent = true
  owners      = ["137112412989"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*-x86_64-gp2*"]
  }
}

data "template_file" "bootstrap" {
  template = file("userdata/bootstrap.sh")

  vars = {
    name_instance = var.ec2_instance_name
  }
}