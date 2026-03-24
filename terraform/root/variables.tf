variable "project_name" {
  description = "Project name for tags"
  type        = string
  default     = "taskapp-hunter"
}

variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "eu-west-1"
}

variable "azs" {
  description = "Availability zones required"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "vpc_cidr" {
  description = "CIDR Block for vpc"
  type             = string
  default        = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR"
  type             = list(string)
  default        = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR"
  type             = list(string)
  default        = ["10.0.2.0/24", "10.0.4.0/24"]
}

variable "ssh_key_name" {
  description = "SSH key pair name for EC2 instances "
  type = string  
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

variable "role_name" {
  type        = string
  description = "Name of the IAM role"
  default = "taskapp-role"
}
