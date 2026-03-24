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