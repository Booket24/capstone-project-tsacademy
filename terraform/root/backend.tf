terraform {
  backend "s3" {
    bucket         = "taskapp-hunter-terraform-state"
    key            = "root/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "taskapp-hunter-terraform-locks"
    encrypt        = true
  }
}