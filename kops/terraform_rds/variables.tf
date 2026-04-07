variable "project_name" {
  description = "Project name used for naming and tagging RDS resources"
  type        = string
  default = "taskapp-hunter"
}

variable "vpc_id" {
  description = "VPC ID from the existing infra"
  type = string
}
variable "private_subnet_ids" {
  description = "List of private subnet IDs for the RDS subnet group"
  type        = list(string)
}

variable "db_name" {
  description = "Application database name"
  type        = string
  default     = "taskapp"
}

variable "db_username" {
  description = "Database master username"
  type        = string
  default     = "taskapp_user"
}

variable "db_password" {
  description = "Database master password"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t4g.micro"
}

variable "engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "17.6"
}