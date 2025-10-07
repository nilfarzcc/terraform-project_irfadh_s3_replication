variable "bucket_name" {}
variable "environment" {}
variable "primary_region" {}
variable "replica_region" {}
variable "enable_replication" {}
variable "tags" {
  type = map(string)
  default = {}
}