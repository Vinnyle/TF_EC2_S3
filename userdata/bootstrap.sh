#!/bin/bash

## Hostname Configuration
hostnamectl set-hostname "${name_instance}"

## Installation Agent
cd /tmp
sudo apt install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
sudo systemctl enable amazon-ssm-agent
sudo systemctl start amazon-ssm-agent

## Installation ServerWeb
apt update -y
apt install -y httpd
systemctl start httpd
systemctl enable httpd
echo "EC2 Instance Working" > /var/www/html/index.html