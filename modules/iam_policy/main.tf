resource "aws_iam_policy" "policy" {
  name        = var.name
  policy      = data.aws_iam_policy_document.data_mining_access_s3.json
}

data "aws_iam_policy_document" "data_mining_access_s3" {
  statement {
    actions = [
      "s3:ListBucket",
      "s3:GetBucketLocation",
    ]
    resources = ["arn:aws:s3:::${var.name}"]
    effect    = "Allow"
  }
  statement {
    actions = [
      "s3:PutObject",
      "s3:RemoveObject",
      "s3:GetObject",
    ]
    resources = ["arn:aws:s3:::${var.name}/*"]
    effect = "Allow"
  }
<<<<<<< HEAD:modules/iam_policy/main.tf
}
=======
}
>>>>>>> d52a1c1d8bf29d511853b528ea9eba970342427f:modules/iam-policy/main.tf
