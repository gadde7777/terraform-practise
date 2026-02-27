terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0" # It is recommended to use version constraints
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
