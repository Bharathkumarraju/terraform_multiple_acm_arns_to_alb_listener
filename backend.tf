

data "aws_region" "current" {}

terraform {
  backend "s3" {
    bucket = "bharaths-test-terraform-remote-state-us"
    key = "test"
    dynamodb_table = "bharaths-test-terraform-remote-state-locks-us"
    region = "us-east-1"
  }
}
