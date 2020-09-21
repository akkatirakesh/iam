resource "aws_iam_policy" "test_policy" {
  name = "test_policy"
  policy = var.policy
}
resource "aws_iam_role" "test_role" {
  name = var.role_name
  assume_role_policy = var.assume_role_policy
  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_role_policy_attachment" "attach_test" {
  policy_arn = aws_iam_policy.test_policy.arn
  role = aws_iam_role.test_role.name
}

variable "role_name" {
  description = "enter the role name"
}

variable "assume_role_policy" {
  description = "enter the policy"
}

variable "policy" {
  description = "enter the policy"
}