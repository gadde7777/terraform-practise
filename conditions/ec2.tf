resource "aws_instance" "example" {
  ami           = var.ami_id
  
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = var.sg_description

  # Ingress rule: Allow HTTP traffic from anywhere (IPv4)
  ingress {
    from_port   = var.sg_from_port
    to_port     = var.sg_to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
    description = "HTTP from anywhere"
  }

  # Egress rule: Allow all outbound traffic 
  egress {
    from_port   = var.sg_from_port
    to_port     = var.sg_to_port
    protocol    = "-1" # Represents all protocols
    cidr_blocks = var.cidr_blocks
  }

    tags = {
    Name = var.sg_tags
  }
}
