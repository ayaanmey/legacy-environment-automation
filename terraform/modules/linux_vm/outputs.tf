output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.finwebtech_terraform_linux.id
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.finwebtech_terraform_linux.public_ip
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.finwebtech_terraform_linux.private_ip
}
