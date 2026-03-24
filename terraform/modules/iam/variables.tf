variable "role_name" {
  type        = string
  description = "Name of the IAM role"
}

variable "project_name" {
  type    = string
}

variable "custom_policy_arns" {
  type        = list(string)
  description = "List of IAM policy ARNs to attach to the role"
  default     = []
}
