aws_region = "us-west-1"

vpc_id    = "vpc-0c07334b320447f19"
subnet_id = "subnet-0304b14511d15112c"

ami_id        = "ami-0e6a50b0059fd2cc3"
instance_type = "t3.micro"
key_name      = "devops-cicd"
instance_name = "server-main"

ssh_cidr_blocks = ["0.0.0.0/0"]

root_volume_size = 30



tf_state_bucket = "cn-web-terraform-state"
tf_lock_table   = "terraform-locks"
