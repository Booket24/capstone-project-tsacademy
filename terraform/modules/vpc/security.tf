resource "aws_security_group" "frontend" {
    name         = "${var.project_name}-frontend-sg"
    description = "Allow HTTP/HTTPS/SSH from the internet"
    vpc_id = aws_vpc.this.id

    ingress {
        from_port = 80
        to_port      = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 443
        to_port      = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port      = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port      = 0
        protocol    = "-1" 
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "backend" {
    name           = "${var.project_name}-backend-sg"
    description = "Allow API traffic only from frontend"
    vpc_id          = aws_vpc.this.id

    ingress {
        from_port = 5000
        to_port = 5000
        protocol = "tcp"
        security_groups = [aws_security_group.frontend.id]
    } 

    egress {
        from_port = 0
        to_port      = 0
        protocol    = "-1" 
        cidr_blocks = ["0.0.0.0/0"]
    } 
}

resource "aws_security_group" "database" {
    name     = "${var.project_name}-db-sg"
    description = "Allow PostgresSQL only from backend"
    vpc_id = aws_vpc.this.id

    ingress {
        from_port = 5432
        to_port = 5432
        protocol = "tcp"
        security_groups = [aws_security_group.backend.id]
    } 

    egress {
        from_port = 0
        to_port      = 0
        protocol    = "-1" 
        cidr_blocks = ["0.0.0.0/0"]
    } 
}