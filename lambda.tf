resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        },
      },
    ],
  })
}
# added comment 2
resource "aws_lambda_function" "test-function" {
  function_name = "test-lambda-function"

  s3_bucket = var.s3_bucket
  s3_key    = "function.zip"

  handler = "main.handler"
  runtime = "python3.12"
  role    = aws_iam_role.lambda_role.arn
}