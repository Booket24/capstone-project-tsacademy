#!/bin/bash

set -e

echo "All variables must be edited in before running this script"
echo "Variables are denoted by <>"
sleep 30s

cd ..

# Adds audience for the oidc provider for token auth of secrets
aws iam add-client-id-to-open-id-connect-provider   --client-id sts.amazonaws.com   --open-id-connect-provider-arn arn:aws:iam::<iam_account_id>:oidc-provider/<s3_kops_bucket>.s3.${AWS_REGION}.amazonaws.com/${NAME}/discovery

cd k8s

echo "Installing ingress controller"
helm upgrade --install ingress-nginx ingress-nginx   --repo https://kubernetes.github.io/ingress-nginx   --namespace ingress-nginx --create-namespace

echo "Installing cert manager for ssl encryption"
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install cert-manager jetstack/cert-manager   --namespace cert-manager --create-namespace   --set crds.enabled=true

echo "Installing CSI secrets driver for AWS secrets"
# Install Driver
helm repo add secrets-store-csi-driver https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts
helm install csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver --namespace kube-system --set syncSecret.enabled=true
# Install AWS Provider
kubectl apply -f https://raw.githubusercontent.com/aws/secrets-store-csi-driver-provider-aws/main/deployment/aws-provider-installer.yaml



# Applying Kubernets manifests

echo "Deplying Cluster issuer manifest"
kubectl apply -f cluster-issuer.yaml

echo "Deploying Secret Provider Class"
kubectl apply -f secretProviderClass.yaml

echo "Deploying databse service account"
kubectl apply -f service-account.yaml

echo "Deploying secret store permissions"
kubectl apply -f secretStore-perm.yaml

echo "Enabling token requests for csi driver to oidc provider"
helm upgrade csi-secrets-store secrets-store-csi-driver/secrets-store-csi-driver   --namespace kube-system   --set "tokenRequests[0].audience=sts.amazonaws.com"

echo "Deploying backend"
kubectl apply -f backendDeployment.yaml

echo "Deploying frontend"
kubectl apply -f frontendDeployment.yaml 
