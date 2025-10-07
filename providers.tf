# Required providers declaration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      configuration_aliases = [aws.replica]
    }
  }
}

# Default provider for primary region
provider "aws" {
  region = var.primary_region
}

# Replica provider for second region
provider "aws" {
  alias  = "replica"
  region = var.replica_region
}
