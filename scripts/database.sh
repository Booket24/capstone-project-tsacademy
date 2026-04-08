#!/bin/bash

# Navigate to the database folder
 cd ..

 cd kops/terraform_rds

 echo "Make sure you have your database password ready"
 echo "VPC id is required"
 echo "Private subnet ids are required in a list of strings"

 sleep 30s

 echo ""

 echo "Starting database proviioning for the kops cluster"

 terraform init
 terraform plan -out=path
 terraform apply "path"
