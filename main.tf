module "s3_bucket" {
  source = "git::https://github.com/yourusername/terraform-module.git?ref=v1.0"

  bucket_name        = var.bucket_name
  environment        = var.environment
  primary_region     = var.primary_region
  replica_region     = var.replica_region
  enable_replication = var.enable_replication
  tags               = var.tags
  providers = {
    aws          = aws
    aws.replica  = aws.replica
  }
}
