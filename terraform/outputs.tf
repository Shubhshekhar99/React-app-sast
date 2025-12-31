output "instance_public_ip" {
  value = module.ec2.public_ip
}

output "security_group_id" {
  value = module.security_group.security_group_id
}
output "ecr_repository_url" {
  value = module.ecr.repository_url
}
