# 🎓 CAPSTONE PROJECT: Cloud-Native TaskApp Deployment

This repository is a production-grade AWS implementation of the Cloud-Native TaskApp Deployment challenge. It answers the same mission: deploy a highly available, secure, and automated Kubernetes-based TaskApp environment using Terraform, kOps, and AWS managed services.

## The Challenge

You have containerized TaskApp (React frontend, Flask backend, PostgreSQL) and deployed it locally. The next step is to migrate this application to production-grade AWS infrastructure using kOps for Kubernetes management and Terraform for infrastructure provisioning.

The goal is to build a highly available, secure, scalable cluster with automated SSL/TLS, Route53 DNS routing, and infrastructure defined entirely in code.

## What This Repo Delivers

- AWS infrastructure provisioned with Terraform
- Remote state backend in S3 with DynamoDB locking
- Automatic etcd backups to S3
- Modular Terraform for VPC, networking, storage, and billing alerts
- kOps-managed Kubernetes cluster with private topology and multi-AZ deployment
- AWS RDS PostgreSQL database for the application data store
- Ingress-based TLS routing via cert-manager and NGINX
- AWS Secrets Store CSI driver integration for Kubernetes secrets
- Automated deployment and teardown scripts in `scripts/`

## Learning Objectives Covered

- Cloud architecture design across multiple Availability Zones
- Infrastructure as Code with Terraform and remote backend state
- Kubernetes operations using kOps and cluster validation
- Cloud-native security via private networking, IAM, and secret management
- DNS delegation and SSL termination with Route53 and cert-manager
- Configuration management support via Ansible scaffolding

## Architecture Summary

- `terraform/root/`: the main AWS infrastructure stack, including VPC, public/private subnets, S3 backend bucket, DynamoDB lock table, and billing alerts.
- `kops/`: cluster provisioning helpers and cluster YAML generation for kOps.
- `kops/terraform_rds/`: private PostgreSQL RDS deployment inside the application VPC.
- `kops/terraform_route53/`: Route53 DNS records for the frontend and backend hosts.
- `k8s/`: Kubernetes manifests for frontend/backend deployments, service accounts, secret provider, and ingress routing.
- `scripts/`: scripted automation for setup, validation, and cleanup.

## System Requirements Addressed

- 3-AZ deployment with separate public and private subnets
- Private Kubernetes topology via kOps
- Multi-master control plane and worker node provisioning
- Remote Terraform state with S3 and DynamoDB locking
- Remote etcd backups every 15mins by default
- Route53-managed DNS for application endpoints
- Automated HTTPS using cert-manager
- Secrets management through AWS secret integration
- Resource requests and limits defined for backend workloads
- RDS database deployment in private subnet group

## Project Structure

- `ansible/` - optional playbooks and configuration for node management
- `docs/` - runbook and documentation for deployment steps
- `k8s/` - Kubernetes manifests for application deployment
- `kops/` - kOps configuration and AWS-specific Terraform for RDS and DNS
- `terraform/` - modular AWS infrastructure code
- `scripts/` - deployment and cleanup automation
- `misc/` - Terraform backend configuration asset

## Deployment Quickstart

1. Review `docs/runbook.md` for the authoritative deployment order.
2. Optionally run `scripts/iam-kops.sh` after replacing placeholders.
3. Run `scripts/terraform-setup.sh` to provision the core AWS infrastructure.
4. Update `scripts/kops-setup.sh` with the VPC ID, subnet IDs, and domain configuration.
5. Run `scripts/kops-setup.sh` to generate `cluster-config.yaml`.
6. Run `scripts/kops-start.sh` to create and validate the Kubernetes cluster.
7. Run `scripts/database.sh` to provision the RDS PostgreSQL database.
8. Run `scripts/kubernetes.sh` to install ingress, cert-manager, CSI, and deploy app manifests.
9. Run `scripts/routing.sh` to create Route53 records and enable HTTPS routing.
10. Use `scripts/cleanup.sh` for teardown and resource cleanup.

## Required Manual Edits

Before running scripts, update the following placeholders:

- `scripts/iam-kops.sh`
  - `<your-username>` → your AWS CLI IAM username
- `scripts/kops-setup.sh`
  - `NAME` → your cluster DNS name
  - `KOPS_STATE_STORE` → your kOps S3 state bucket
  - `AWS_REGION` → your AWS region
  - `VPC_ID` → the VPC ID from Terraform output
  - subnet placeholders → actual private and public subnet IDs
- `scripts/kubernetes.sh`
  - `<iam_account_id>` and `<s3_kops_bucket>` in the OIDC command
  - ensure `NAME` and `AWS_REGION` are exported properly
- `scripts/database.sh`
  - provide the RDS `db_password` variable
  - supply `private_subnet_ids` from Terraform output
- `scripts/routing.sh`
  - use the ingress external IP/DNS for Route53 mapping
- `scripts/cleanup.sh`
  - `<your-kops-bucket-name>` → actual kOps state bucket name
  - ensure `${NAME}` is exported for cluster deletion
- `kops/terraform_route53/route53.tf`
  - replace `terra-hunter.com.` with your registered domain
- `k8s/routing.yaml`
  - update `taskapp.terra-hunter.com` and `api.terra-hunter.com` to match your hostnames

## Notes

- The repository follows the referenced capstone expectations by using Terraform, kOps, and AWS services to deploy TaskApp in a cloud-native fashion.
- This implementation is intended to be adapted with a real registered domain and AWS account details before execution.
- The primary app containers are declared in `k8s/backendDeployment.yaml` and `k8s/frontendDeployment.yaml`.

## Documentation and Presentations

- Cost and usage analysis: `docs/cost-analysis.md`
- Presentation videos:
  - `misc/2026-04-08 15-46-50.mp4`
  - `misc/2026-04-08 16-03-01.mp4`

## Submission Checklist

- [ ] `terraform plan` runs successfully in `terraform/root`
- [ ] `kops create` / `kops update` provisions the cluster in AWS
- [ ] `kops validate cluster` reports a ready cluster
- [ ] Application endpoints are available via HTTPS
- [ ] Database is provisioned privately in AWS RDS
- [ ] Secrets are externally managed, not hardcoded in Git
- [ ] Cleanup process removes AWS resources cleanly

---
.

