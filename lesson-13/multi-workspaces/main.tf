terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.45"
    }
  }

  required_version = ">= 1.4.9"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "workspace_testing" {
  ami           = "ami-0b6d6dacf350ebc82"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}


