output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = try(aws_iam_policy.policy[0].arn, "")
}

output "name" {
  description = "The name of the policy"
  value       = try(aws_iam_policy.policy[0].name, "")
}

output "policy" {
  description = "The policy document"
  value       = try(aws_iam_policy.policy[0].policy, "")
}

output "policy_json" {
  description = "Policy document as json. Useful if you need document but do not want to create IAM policy itself. For example for SSO Permission Set inline policies"
  value       = data.aws_iam_policy_document.data_mining_access_s3.json
}

output "policy_arn" {
  description = "Assume role policy ARN of IAM group"
  value       = aws_iam_policy.policy.arn
}




