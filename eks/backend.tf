terraform {
  required_version = "~> 1.11.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-mohit-tf-bucket"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "dev-mohit-tf-table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
