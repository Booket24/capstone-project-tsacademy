output "project_context" {
    description = "Project context returned from core module"
    value           = module.core.project_context 
}

output "vpc_id" {
    description = "VPC ID returned from vpc module"
    value           = module.vpc.vpc_id  
}

output "db_endpoint" {
    description = "RDS PostgresSQL endpoint"
    value = module.RDS.db_endpoint
}

output "frontend_private_ip" {
  description = "Public IP address of the frontend EC2 instance"
  value       = module.EC2.frontend_private_ip
}

output "backend_private_ip" {
  description = "Private IP address of the backend EC2 instance"
  value       = module.EC2.backend_private_ip
}

output "database_private_ip" {
  description = "Public IP address of the backend EC2 instance"
  value       = module.EC2.database_private_ip
}
