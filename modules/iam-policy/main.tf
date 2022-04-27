resource "aws_iam_policy" "policy" {
  count = var.create_policy ? 1 : 0

  name        = var.name
  path        = var.path
  description = var.description

  policy = data.aws_iam_policy_document.data_mining_access_s3.json

  tags = var.tags
}

data "aws_iam_policy_document" "data_mining_access_s3" {

  statement {
    actions = [
      "s3:ListBucket",
      "s3:GetBucketLocation",
    ]
    resources = ["arn:aws:s3:::var.bucket_name"]
    effect    = "Allow"
  }

  statement {
    actions = [
      "s3:PutObject",
      "s3:RemoveObject",
      "s3:GetObject",
    ]
    resources = ["arn:aws:s3:::var.bucket_name/*"]
    effect = "Allow"
  }
}

resource "aws_iam_user_policy_attachment" "this" {
  policy_arn = aws_iam_policy.policy.id
  user= var.name
}