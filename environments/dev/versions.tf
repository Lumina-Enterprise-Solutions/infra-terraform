# infra-terraform/environments/dev/versions.tf
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = var.region
  access_key                  = "test"  # LocalStack uses dummy credentials
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    s3          = "http://localhost:4566"
    rds         = "http://localhost:4566"
    ec2         = "http://localhost:4566"
    iam         = "http://localhost:4566"
    kms         = "http://localhost:4566"
    route53     = "http://localhost:4566"
    cloudfront  = "http://localhost:4566"
  }
}
