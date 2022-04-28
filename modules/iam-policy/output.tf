output "name" {
  description = "The name of the policy"
  value       = aws_iam_policy.policy.name
}

output "policy" {
  description = "The policy document"
  value       = aws_iam_policy.policy.policy

}

output "policy_arn" {
  description = "Assume role policy ARN of IAM group"
  value       = aws_iam_policy.policy.arn
}




