data "aws_iam_policy_document" "data_mining_access_s3" {
  statement {
    sid = "1"
    effect = "Allow"
    actions = ["s3:*"]
    resources = ["arn:aws:s3:::datamining-solution/*"]

  }
  statement {
    sid = "2"
    effect = "Allow"
    actions = [
      "s3:ListBucket",
      "s3:GetBucketLocation"
    ]
    resources = [
      "arn:aws:s3:::datamining-solution/*",
      "arn:aws:s3:::datamining-solution",
    ]
  }
  statement {
    sid = "3"
    effect = "Allow"
    actions = ["s3:GetObject"]
    resources = [
      "arn:aws:s3:::datamining-solution",
      "arn:aws:s3:::datamining-solution/*",
    ]
  }

  statement {
    sid = "4"
    effect = "Allow"
    actions = ["s3:PutObject"]
    resources = [
      "arn:aws:s3:::datamining-solution",
      "arn:aws:s3:::datamining-solution/*",
    ]
  }

  statement {
    sid = "5"
    effect = "Allow"
    actions = ["s3:RemoveObject"]
    resources = [
      "arn:aws:s3:::datamining-solution",
      "arn:aws:s3:::datamining-solution/*",
    ]

  }

 }



