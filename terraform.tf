terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = local.region

  default_tags {
    tags = {
      Project     = local.project
      Owner       = local.owner
      Environment = local.environment
      Provider    = "Terraform"
    }
  }
}
