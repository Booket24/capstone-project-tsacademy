#!/bin/bash

cd .. 

cd kops/terraform_route53

echo "Removing Roue53 CNAME Propagation"
echo "Make sure you have the External IP of the ingress controller"
sleep 30s
terraform destroy

cd ..

cd terraform_rds

echo "Removing database and its dependencies"
echo "Make sure you have database password and vpc id"
echo "Make sure you have the private subnet ids as list of strings"
sleep 30s
terraform destroy


cd ..

echo "Deleting Kops Cluster"
kops delete cluster --name ${NAME} --yes


cd ..

cd terraform/root

echo "Deleting kops bucket"
aws s3 rb ${KOPS_STATE_STORE} --force

echo "Destroying infrastructure"
echo "State locking will be ignored"
terraform destroy -lock=false
