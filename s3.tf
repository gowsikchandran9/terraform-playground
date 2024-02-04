/*
resource "aws_s3_bucket" "finance" {
  bucket = "finance-09101988"
  tags   = {
    Description = "Finance and Payroll"
  }
}

resource "aws_s3_object" "finance-2020" {
  content = "${path.module}/admin-policy.json"
  key     = "admin-policy.json"
  bucket  = aws_s3_bucket.finance.id
}



data "aws_iam_user" "lucy" {
  user_name = "Lucy"
}
output "aws_iam_user_arn" {
  value = data.aws_iam_user.lucy.arn
}


resource "aws_s3_bucket_policy" "finance-policy" {
  bucket = aws_s3_bucket.finance.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::${aws_s3_bucket.finance.id}",
        "arn:aws:s3:::${aws_s3_bucket.finance.id}*/
/*"
      ],
      "Principal": {
        "AWS": "${data.aws_iam_user.lucy.arn}"
      }
    }
  ]
}
EOF
}
*/
