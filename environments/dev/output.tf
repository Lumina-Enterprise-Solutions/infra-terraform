# infra-terraform/environments/dev/outputs.tf
output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = module.rds.rds_endpoint
}

output "s3_file_storage_bucket" {
  description = "S3 file storage bucket name"
  value       = module.s3.file_storage_bucket
}
