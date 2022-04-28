resource "aws_iam_user" "this" {
  count = var.create_user ? 1 : 0
  name = var.name
}

resource "aws_iam_user_login_profile" "data-mining" {
  user                    = aws_iam_user.this[0].name
  pgp_key                 = var.pgp_key
  password_length         = var.password_length
  password_reset_required = var.password_reset_required
}

module "iam_policy" {
  source = "../../modules/iam-policy"
  name = var.name
}

resource "aws_iam_user_policy_attachment" "s2_policy" {
  policy_arn = module.iam_policy.policy_arn
  user       = var.name
}
