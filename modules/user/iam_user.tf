resource "aws_iam_user" "datamining" {

  name                 = var.name
  #path                 = var.path
  #force_destroy        = var.force_destroy
  #permissions_boundary = var.permissions_boundary

}

resource "aws_iam_user_login_profile" "data-mining" {

  user                    = aws_iam_user.datamining.name
  pgp_key                 = var.pgp_key
  password_length         = var.password_length
  password_reset_required = var.password_reset_required
}

resource "aws_iam_user_policy" "datamining" {
  #bridgecrew:skip=BC_AWS_IAM_16:Skipping `Ensure IAM policies are attached only to groups or roles` check because this module intentionally attaches IAM policy directly to a user.

  name   = var.name
  user    = var.user
  policy = data.aws_iam_policy_document.data_mining_access_s3.json
}


