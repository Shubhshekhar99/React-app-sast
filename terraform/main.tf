provider "aws" {
  region = var.aws_region
}

module "security_group" {
  source          = "./modules/security-group"
  sg_name         = "my-ec2-sg"
  vpc_id          = var.vpc_id
  ssh_cidr_blocks = var.ssh_cidr_blocks
}

module "ec2" {
  source                    = "./modules/ec2"
  ami_id                    = var.ami_id
  instance_type             = var.instance_type
  key_name                  = var.key_name
  subnet_id                 = var.subnet_id
  security_group_ids        = [module.security_group.security_group_id]
  instance_name             = var.instance_name
}

module "ecr" {
  source          = "./modules/ecr"
  repository_name = "my-reactapp"
}
