provider "aws" {
   region     = "us-east-2"
}

provider "aws" {
   alias = "virginia"
   region     = "us-west-2"
}

provider "azurerm" {
  features {}
}
