#!/bin/bash

# Navigate to the terraform directory

cd ..

cd terraform/root

# Provision the terraform infrastructure

echo "Provisioning AWS infra"
terraform init

terraform plan -out=path

terraform apply "path" 

# Adding state locking 

cd ..

cd ..

mv misc/backend.ts terraform/root

cd terraform/root

echo "Applying backend for state locking"
sleep 15s
terraform init


