bucket_name        = "nilfar-s3"
environment        = "dev"
primary_region     = "us-east-1"
replica_region     = "us-east-2"
enable_replication = true

tags = {
  Owner = "nilfar"
  Project = "project-s3-replica"
}