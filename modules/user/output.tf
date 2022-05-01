output "aws_iam_user"{
  description = "Name of the user"
  value       = aws_iam_user.this[0].name
}

output "user" {
  value = var.user
}