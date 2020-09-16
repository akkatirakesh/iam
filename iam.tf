resource "aws_iam_role" "test_role" {
  name = var.role_name

  assume_role_policy = var.policy

  tags = {
    tag-key = "tag-value"
  }
}

variable "role_name" {
  description = "enter the role name"
}

variable "policy" {
  description = "enter the policy"
}