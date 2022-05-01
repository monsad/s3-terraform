output "bucket_name" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.this.id
}

output "arn" {
  value = aws_s3_bucket.this.arn
}

output "s3_tags" {
  value = aws_s3_bucket.this.tags
}
