module "core" {
  source = "../modules/core"

  project_name = var.project_name
  aws_region   = var.aws_region
  azs          = var.azs
}

module "vpc" {
  source = "../modules/vpc"

  project_name              = var.project_name
  vpc_cidr                        = var.vpc_cidr
  azs                                 = var.azs
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "RDS" {
  source = "../modules/rds"

  project_name = var.project_name
  private_subnet_ids = module.vpc.private_subnet_ids
  database_sg_id = module.vpc.database_sg_id

  db_name = var.db_name
  db_username = var.db_username
  db_password = var.db_password 
}

module "iam" {
  source    = "../modules/iam"

  project_name = var.project_name
  role_name = var.role_name
}

module "billing_alert" {
  source            = "../modules/billing"
  
  budget_name       = var.budget_name
  limit_amount      = var.limit_amount
  threshold         = var.threshold
  subscriber_emails = var.subscriber_emails
}

module "backend_storage" {
  source = "../modules/storage"

project_name = var.project_name
aws_region = var.aws_region
  bucket_name = var.bucket_name
  table_name = var.table_name
}
