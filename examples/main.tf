module "iam" {
  source = "../"
  role_name = var.role_name
  policy = data.aws_iam_policy_document.policy.json
  assume_role_policy = data.aws_iam_policy_document.assume_policy.json
}

variable "role_name" {
  default = "test_role"
}

provider "aws" {
  access_key="AKIAQAKEBHAJAAGFMCXP"
  secret_key="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"
  region = "us-east-1"
}



