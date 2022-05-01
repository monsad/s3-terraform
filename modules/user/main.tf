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
  source = "../iam_policy"
  name = var.name
}

resource "aws_iam_user_policy_attachment" "s2_policy" {
  policy_arn = module.iam_policy.arn
  user       = var.name
<<<<<<< HEAD:modules/user/main.tf
}
=======
}
>>>>>>> d52a1c1d8bf29d511853b528ea9eba970342427f:modules/user/iam_user.tf
