variable "ami_id" {
  description = "AMI ID to use for the Linux VM"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "security_group_ids" {
  description = "Security group IDs to attach to the EC2 instance"
  type        = list(string)
}

variable "key_name" {
  description = "AWS key pair name for SSH access"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "environment" {
  description = "Environment tag value"
  type        = string
}

variable "owner" {
  description = "Owner tag value"
  type        = string
}
