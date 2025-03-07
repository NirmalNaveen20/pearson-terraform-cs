output "ec2_instance_private_ips" {
  description = "Private IP addresses of the EC2 instances"
  value       = module.ec2_instances.*.private_ip
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
  
}