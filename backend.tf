

data "aws_region" "current" {}

terraform {
  backend "s3" {
    bucket = "bharaths-test-terraform-remote-state"
    key = "test"
    dynamodb_table = "bharaths-test-terraform-remote-state-locks"
    region = "us-east-1"
  }
}
