output "name" {
  description = "The name of the policy"
  value       = aws_iam_policy.policy.name
}
output "arn" {
  description = "Assume role policy ARN of IAM group"
  value       = aws_iam_policy.policy.arn
<<<<<<< HEAD:modules/iam_policy/output.tf
}
=======
}
>>>>>>> d52a1c1d8bf29d511853b528ea9eba970342427f:modules/iam-policy/output.tf
