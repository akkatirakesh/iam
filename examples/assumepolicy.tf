data "aws_iam_policy_document" "assume_policy" {
  statement {
    sid = ""
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["ec2.amazonaws.com"]
      type = "Service"
    }
  }
}