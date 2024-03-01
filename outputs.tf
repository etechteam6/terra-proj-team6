output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = module.server.instance.public_ip
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.main_vpc_id
  sensitive   = false
}

output "ami_id" {
  description = "ID of AMI"
  value       = module.server.instance.ami
  sensitive   = false
}