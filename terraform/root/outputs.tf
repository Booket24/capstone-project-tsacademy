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

output "vpc_public_subnets" {
  description = "Public subnets returned from vpc"
  value = module.vpc.public_subnet_ids
}

output "vpc_private_subnets" {
  description = "Private subnets returned from vpc"
  value = module.vpc.private_subnet_ids
}

output "s3_state_store" {
  description = "S3 bucket for state locking and kops"
  value = module.backend_storage.state_bucket_name
}