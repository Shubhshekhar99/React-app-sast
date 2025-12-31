variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "ssh_cidr_blocks" {
  type = list(string)
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
}


#state

variable "tf_state_bucket" {
  description = "S3 bucket for Terraform remote state"
  type        = string
}

variable "tf_lock_table" {
  description = "DynamoDB table for Terraform state locking"
  type        = string
}
