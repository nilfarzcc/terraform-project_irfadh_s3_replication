terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Default AWS provider (us-east-1)
provider "aws" {
  region = var.primary_region
}

# Aliased AWS provider (us-east-2 for replication)
provider "aws" {
  alias  = "replica"
  region = var.replica_region
}