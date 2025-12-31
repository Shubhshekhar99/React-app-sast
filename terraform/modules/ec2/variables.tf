variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "associate_public_ip" {
  description = "Associate public IP"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}

variable "instance_name" {
  type = string
}

variable "root_volume_size" {
  description = "Root EBS volume size in GB"
  type        = number
  default     = 20
}

variable "ssm_role_name" {
  description = "Name of the EC2 IAM role for SSM"
  type        = string
  default     = "ec2-ssm-role"
}

variable "ssm_instance_profile_name" {
  description = "Name of the EC2 IAM instance profile for SSM"
  type        = string
  default     = "ec2-ssm-profile"
}

variable "ssm_policy_arn" {
  description = "ARN of the policy to attach for SSM"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
