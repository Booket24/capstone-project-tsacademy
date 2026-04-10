#!/bin/bash

set -euo pipefail

STATE_STORE=<your-s3-bucket-name>
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
AWS_REGION=<your-region>
NAME=clusters.<yourdomain.com>

echo "Make sure you edit all the required variables before running this script"
echo "Variables are denoted with <>"

sleep 30s

echo ""
cd ..

# Adds audience for the oidc provider for token auth of secrets
aws iam add-client-id-to-open-id-connect-provider   --client-id sts.amazonaws.com   --open-id-connect-provider-arn arn:aws:iam::${ACCOUNT_ID}:oidc-provider/${STATE_STORE}.s3.${AWS_REGION}.amazonaws.com/${NAME}/discovery

cd k8s

echo "Installing ingress controller"
helm upgrade --install ingress-nginx ingress-nginx   --repo https://kubernetes.github.io/ingress-nginx   --namespace ingress-nginx --create-namespace

echo ""

echo "Installing cert manager for ssl encryption"
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install cert-manager jetstack/cert-manager   --namespace cert-manager --create-namespace   --set crds.enabled=true

echo ""

echo "Installing CSI secrets driver for AWS secrets"
# Install Driver
helm repo add secrets-store-csi-driver https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts
helm install csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver --namespace kube-system --set syncSecret.enabled=true
# Install AWS Provider
kubectl apply -f https://raw.githubusercontent.com/aws/secrets-store-csi-driver-provider-aws/main/deployment/aws-provider-installer.yaml

echo ""

# Applying Kubernets manifests

echo "Deplying Cluster issuer manifest"
kubectl apply -f cluster-issuer.yaml

echo ""

echo "Deploying Secret Provider Class"
kubectl apply -f secretProviderClass.yaml

echo ""

echo "Deploying databse service account"
kubectl apply -f service-account.yaml

echo ""

echo "Deploying secret store permissions"
kubectl apply -f secretStore-perm.yaml

echo ""

echo "Enabling token requests for csi driver to oidc provider"
helm upgrade csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver   --namespace kube-system   --set "tokenRequests[0].audience=sts.amazonaws.com"

echo ""

echo "Deploying backend"
kubectl apply -f backendDeployment.yaml

echo ""

echo "Deploying frontend"
kubectl apply -f frontendDeployment.yaml 
