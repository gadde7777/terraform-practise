variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL-9"
 }

variable "instance_type" {
    type = string
    default = "t3.micro"
  }

variable "ec2_tags"    {
    type = map
    default =    {
        Name = "Variables-demo"
        Project = "Roboshop"
        Terraform = "true"
        Environment = "dev"
    }

    } 

    variable "environment" {
      default = "dev"
    }

 variable "sg_name" {
  type = string
  default = "allow_all-terraform"

 }

  variable "sg_description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"

 }

  variable "sg_from_port" {
  type = number
  default = 0
 }

 
  variable "sg_to_port" {
  type = number
  default = 0
 }

   variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]

 }

   variable "sg_tags" {
  type = string
  default = "allow_all-terraform"

 }

