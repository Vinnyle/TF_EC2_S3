# Create S3 Bucket
module "s3_bucket" {
    source = "./modules/s3_bucket"
    bucket_name = "${var.bucket_name}"
    vpc_name    = "${var.vpc_name}"
    user_arn    = "${var.user_arn}"
    ec2_arn     = module.ec2_instance.instance_arn
    ec2_public_ip   = module.ec2_instance.public_ip
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    nsg_name = "${var.nsg_name}"
    key_name = "${var.key_name}"
    vpc_name = "${var.vpc_name}"
    ec2_instance_name = "${var.ec2_instance_name}"
    subnet_name = "${var.subnet_name}"
    ec2_ami = "${var.ec2_ami}"
}