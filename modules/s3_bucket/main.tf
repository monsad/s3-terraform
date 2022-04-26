resource "aws_s3_bucket" "datamining-bucket" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_acl" "datamining_bucket_acl" {
  bucket = aws_s3_bucket.datamining-bucket.id
  acl    = "private"
}

