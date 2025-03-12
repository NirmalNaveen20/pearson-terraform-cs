# testing importing infrastructure
terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.01"
        }
    }
    required_version = ">= 0.14.9"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance1" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
   
  tags = {
    "Name" = "my-webserver"
  }
}