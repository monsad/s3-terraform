output "bucket_name" {
  description = "Bucket name"
  value       = module.s3_bucket.bucket_name
}

output "user" {
  description = "User name"
  value       = module.user.aws_iam_user
}