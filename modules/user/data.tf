data "aws_iam_policy_document" "data_mining_access_s3" {

  statement {
    actions = [
      "s3:ListBucket",
      "s3:GetBucketLocation"
    ]
    resources = ["arn:aws:s3:::datamining-solution",]
    effect    = "Allow"
  }

  statement {
    actions = [
      "s3:PutObject",
      "s3:RemoveObject",
      "s3:GetObject",
    ]
    resources = ["arn:aws:s3:::datamining-solution/*",]
    effect = "Allow"
  }
}





