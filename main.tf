module "s3_bucket" {
  source = "git::https://github.com/nilfarzcc/terraform-module.git?ref=main"

  providers = {
    aws         = aws        # primary region provider
    aws.replica = aws.replica # replica region provider
  }

  bucket_name        = var.bucket_name
  environment        = var.environment
  primary_region     = var.primary_region
  replica_region     = var.replica_region
  enable_replication = var.enable_replication
  tags               = var.tags
}
