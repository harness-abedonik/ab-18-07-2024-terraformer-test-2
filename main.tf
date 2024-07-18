provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "ab-18-07-2024-terraformer-state-test-1"
    key    = "terraform.tfstate_2"
    region = "us-west-2"
  }
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_1_2" {
  name  = "ab_18_07_2024_terraformer_test_1_2"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_2_2" {
  name  = "ab_18_07_2024_terraformer_test_2_2"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_3_2" {
  name  = "ab_18_07_2024_terraformer_test_3_2"
  type  = "String"
  value = "This is a test parameter"
}

output "ab_18_07_2024_terraformer_test_1_2" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_1_2.arn
}

output "ab_18_07_2024_terraformer_test_2_2" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_2_2.arn
}

output "ab_18_07_2024_terraformer_test_3_2" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_3_2.arn
}
