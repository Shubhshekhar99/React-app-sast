

resource "aws_instance" "this" {
  ami          = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  root_block_device {
    volume_size = var.root_volume_size
    volume_type = "gp3"  
  }
    user_data = <<-EOF
    #!/bin/bash
    set -e

    apt-get update -y
    apt-get install -y docker.io

    systemctl start docker
    systemctl enable docker
    usermod -aG docker ubuntu
    EOF
  tags = {
    Name        = var.instance_name
  }
}
