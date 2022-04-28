resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Name        = "Created by Terraform"
    Environment = "devlabs"
  }

  versioning {
    enabled = true
  }
}
resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}
