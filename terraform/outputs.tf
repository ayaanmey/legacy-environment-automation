output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.linux_vm.instance_id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.linux_vm.public_ip
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = module.linux_vm.private_ip
}
