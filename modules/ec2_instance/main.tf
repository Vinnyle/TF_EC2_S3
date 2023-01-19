resource "aws_instance" "ec2_instance" {
  ami                  = data.aws_ami.ec2_instance.id
  instance_type        = "t2.micro"
  key_name = aws_key_pair.ssh_keys.key_name
  vpc_security_group_ids = [aws_security_group.ec2_nsg.id]
  subnet_id = aws_subnet.ec2_subnet.id
  user_data = base64encode(data.template_file.bootstrap.rendered)
  
  tags = {
    Name = "${var.ec2_instance_name}"
  }
}

resource "aws_key_pair" "ssh_keys" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_security_group" "ec2_nsg" {
  name        = var.nsg_name
  description = "Security group for example EC2 instance"
  vpc_id = aws_vpc.ec2_vpc.id

 #allow http 
  ingress {
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
# allow https
  ingress {
  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
# allow SSH
  ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
#all outbound
  egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_vpc" "ec2_vpc" {
 cidr_block = "10.0.0.0/16"
 enable_dns_hostnames = true
 enable_dns_support = true

  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_subnet" "ec2_subnet" {
  vpc_id                  = aws_vpc.ec2_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
    
    tags = {
    Name = "${var.subnet_name}"
  }               
}
