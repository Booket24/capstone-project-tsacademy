data "aws_ami" "ubuntu" {
    most_recent = true
    owners          =  ["099720109477"]

    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
    }

    filter {
        name = "architecture"
        values = ["x86_64"]
    }
}

resource "aws_instance" "frontend" {
    ami                                            = data.aws_ami.ubuntu.id
    instance_type                          = var.instance_type_frontend
    subnet_id                                 = var.frontend_subnet_id
    vpc_security_group_ids         = [var.frontend_sg_id]
    key_name                                 = var.ssh_key_name
    iam_instance_profile              = var.iam_instance_profile 

    tags = {
      Name = "${var.project_name}-frontend"
      Role = "frontend"
      Project = var.project_name
    }
}

resource "aws_instance" "backend" {
    ami                                            = data.aws_ami.ubuntu.id
    instance_type                          = var.instance_type_backend
    subnet_id                                 = var.backend_subnet_id
    vpc_security_group_ids         = [var.backend_sg_id]
    key_name                                 = var.ssh_key_name
    iam_instance_profile              = var.iam_instance_profile 

    tags = {
      Name = "${var.project_name}-backend"
      Role = "backend"
      Project = var.project_name
    }
}

resource "aws_instance" "database" {
    ami                                            = data.aws_ami.ubuntu.id
    instance_type                          = var.instance_type_database
    subnet_id                                 = var.database_subnet_id
    vpc_security_group_ids         = [var.database_sg_id]
    key_name                                 = var.ssh_key_name
    iam_instance_profile              = var.iam_instance_profile 

    tags = {
      Name = "${var.project_name}-database"
      Role = "database"
      Project = var.project_name
    }
}