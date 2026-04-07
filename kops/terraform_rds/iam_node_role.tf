# 1. The IAM Policy (Same as before)
resource "aws_iam_policy" "db_secret_policy" {
  name = "CapstoneSecretAccess"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue","secretsmanager:DescribeSecret"]
      Effect   = "Allow"
      Resource = aws_secretsmanager_secret.db_secret.arn
    }]
  })
}

# 2. The IAM Role with Trust Relationship for kOps OIDC
resource "aws_iam_role" "csi_role" {
  name = "kops-db-secret-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { Federated = "arn:aws:iam::541645813504:oidc-provider/taskapp-hunter-kops-state.s3.eu-west-1.amazonaws.com/clusters.terra-hunter.com/discovery" }
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "taskapp-hunter-kops-state.s3.eu-west-1.amazonaws.com/clusters.terra-hunter.com/discovery:sub": "system:serviceaccount:default:db-service-account"
        }
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = aws_iam_role.csi_role.name
  policy_arn = aws_iam_policy.db_secret_policy.arn
}

