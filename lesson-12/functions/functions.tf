terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = "us-east-2"
}

# Add IAM user resource here and use functions!

resource "aws_iam_user" "name" {
  name = "function-user"
  tags = {
    department   = "tech ops"
    environment  = "dev"
    time_created = timestamp()
  }
}