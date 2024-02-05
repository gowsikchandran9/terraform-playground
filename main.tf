provider "aws" {
  region = "eu-central-1"
}
terraform {
  backend "s3" {
    bucket         = "playground-app-terraform-state-bucket"
    key            = "terraform/playground-app/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "playground-app-terraform-state-locks"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_iam_user" "admin-user" {
  name = "Lucy"
  tags = {
    Description = "Technical Team Leader"
  }
}

resource "aws_iam_policy" "adminUser" {
  name   = "AdminUsers"
  policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "lucy-admin-access" {
  policy_arn = aws_iam_policy.adminUser.arn
  user       = aws_iam_user.admin-user.name
}