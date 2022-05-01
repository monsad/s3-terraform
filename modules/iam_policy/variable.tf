variable "create_policy" {
  description = "Whether to create the IAM policy"
  type        = bool
  default     = true
}

variable "name" {
  description = "The name of the policy"
  type        = string
}

variable "description" {
  description = "The description of the policy"
  type        = string
  default     = "IAM Policy"
}

variable "policy" {
  description = "The path of the policy in IAM (tpl file)"
  type        = string
  default     = ""
<<<<<<< HEAD:modules/iam_policy/variable.tf
}
=======
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}
>>>>>>> d52a1c1d8bf29d511853b528ea9eba970342427f:modules/iam-policy/variable.tf
