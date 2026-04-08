#!/bin/bash

set -e

echo "Edit all required variables in this script"
echo "Variables are denoted by <>"
sleep 30s

echo ""

cd .. 

cd kops/terraform_route53

echo "Removing Roue53 CNAME Propagation"
echo "Make sure you have the External IP of the ingress controller"
sleep 30s
terraform destroy

echo ""

cd ..

cd terraform_rds

echo "Removing database and its dependencies"
echo "Make sure you have database password and vpc id"
echo "Make sure you have the private subnet ids as list of strings"
sleep 30s
terraform destroy

echo ""

cd ..

echo "Deleting Kops Cluster"
kops delete cluster --name ${NAME} --yes

echo ""

cd ..

cd terraform/root

echo "Deleting kops bucket"
echo "Press q when you see the : prompt"
aws s3api delete-objects \
    --bucket <your-kops-bucket-name> \
    --delete "$(aws s3api list-object-versions \
    --bucket <your-kops-bucket-name> \
    --output json \
    --query '{Objects: Versions[].{Key:Key,VersionId:VersionId}}')"

aws s3api delete-objects \
    --bucket <your-kops-bucket-name> \
    --delete "$(aws s3api list-object-versions \
    --bucket <your-kops-bucket-name> \
    --output json \
    --query '{Objects: DeleteMarkers[].{Key:Key,VersionId:VersionId}}')"

echo ""

echo "Destroying infrastructure"
echo "State locking will be ignored"
terraform destroy -lock=false

echo ""

echo "Removing AWS Secrets"
aws secretsmanager delete-secret --secret-id project/capstone/database_credentials --force-delete-without-recovery
