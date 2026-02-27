resource "aws_instance" "example" {
  ami           = "ami-0220d79f3f480ecf5"
  count = 10
   instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name =  var.instances[count.index]
    Project = "Roboshop"
      }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_all-terraform_NM"
  description = "Allow TLS inbound traffic and all outbound traffic"

  # Ingress rule: Allow HTTP traffic from anywhere (IPv4)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP from anywhere"
  }

  # Egress rule: Allow all outbound traffic 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Represents all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

    tags = {
    Name = "allow_all-terraform"
  }
}
