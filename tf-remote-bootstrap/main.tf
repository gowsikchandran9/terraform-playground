terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "eu-central-1"
  profile = "dvt-training-admin"}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "playground-app-terraform-state-bucket"
}

resource "aws_dynamodb_table" "terraform_locks" {
  name           = "playground-app-terraform-state-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
output "s3_bucket_name" {
  value = aws_s3_bucket.terraform_state.bucket
  description = "The name of the S3 bucket used for storing Terraform state."
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_locks.name
  description = "The name of the DynamoDB table used for Terraform state locking."
}