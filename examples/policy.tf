data "aws_iam_policy_document" "policy" {
  statement {
    sid = "1"
    actions = [
      "ec2:*",
    ]
    resources = [
      "*",
    ]
  }
}
