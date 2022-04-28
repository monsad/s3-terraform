output "bucket_name" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.this.id


}

output "s3_bucket_arn" {
  value = aws_s3_bucket.this.arn
}

output "s3_tags" {
  value = aws_s3_bucket.this.tags
}

