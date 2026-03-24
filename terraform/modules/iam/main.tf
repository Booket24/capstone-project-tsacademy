resource "aws_iam_role" "this" {
  name = "${var.project_name}-${var.role_name}"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_instance_profile" "this" {
  name = "${var.project_name}-${var.role_name}-profile"
  role = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "custom" {
  for_each   = toset(var.custom_policy_arns)
  
  role       = aws_iam_role.this.name
  policy_arn = each.value
}
