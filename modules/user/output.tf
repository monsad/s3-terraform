output "aws_iam_user"{
  description = "Name of the user"
  value       = try(aws_iam_user.this[0].name, "")
}

output "user" {
  value = var.user
}
