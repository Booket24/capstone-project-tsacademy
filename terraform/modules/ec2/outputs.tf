output "frontend_private_ip" {
    description = "Private IP address of the frontend EC2 instance"
    value = aws_instance.frontend.private_ip
}

output "backend_private_ip" {
    description = "Private IP address of the backend EC2 instance"
    value = aws_instance.backend.private_ip
}

output "database_private_ip" {
    description = "Private IP address of the database EC2 instance"
    value = aws_instance.database.private_ip
}