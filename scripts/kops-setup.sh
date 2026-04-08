#!/bin/bash

set -euo pipefail

cd ..

cd kops

echo "Make sure you edit all the required variables before running this script"
echo "Variables are denoted with <>"

sleep 30s

echo ""

# Setting up kOps
# kOps setup variables
# 1. The name of your cluster (Must end with your Route53 domain)
export NAME=clusters.yourdomain.com

# 2. The S3 bucket you created for Kops state (e.g., s3://my-kops-state-123)
export KOPS_STATE_STORE=s3://<your s3 bucket name>

# 3. Your AWS Region
export AWS_REGION=<your-region>

# 4. Your VPC ID
export VPC_ID=<enter your provisioned VPC ID from the existing infra>

#kOps CLI configuration for yaml

echo "Creating kOps cluster yaml file with all neccesary flags"
kops create cluster  --name=${NAME} --state=${KOPS_STATE_STORE} --network-id=${VPC_ID} --subnets=<private_subnet_1>,<private_subnet_2>,<private_subnet_3> --utility-subnets=<public_subnet_1>,<public_subnet_2>,<public_subnet_3> --zones=${AWS_REGION}a,${AWS_REGION}b,${AWS_REGION}c --ssh-public-key=~/.ssh/id_rsa_kops.pub --control-plane-zones=${AWS_REGION}a,${AWS_REGION}b,${AWS_REGION}c --topology=private --networking=cilium --set="spec.serviceAccountIssuerDiscovery.discoveryStore=${KOPS_STATE_STORE}/${NAME}/discovery" --set="spec.iam.useServiceAccountExternalPermissions=true" --set="spec.serviceAccountIssuerDiscovery.enableAWSOIDCProvider=true" --control-plane-count=3 --node-count=3 --node-size=t3a.medium --control-plane-size=t3a.medium --dns-zone=${NAME} --bastion="true" --dry-run -o yaml > cluster-config.yaml

echo ""

echo "Editing kOps cluster yaml for spot instances pricing"
vi cluster-config.yaml
