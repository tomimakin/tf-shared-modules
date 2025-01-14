data "aws_iam_policy_document" "assume_role" {
    statement {
        effect = "Allow"

        principals {
            type        = "Service"
            identifiers = ["lambda.amazonaws.com"]
        }
        actions = ["sts:AssumeRole"]
    }
}

resource "aws_iam_role" "role_for_lambda" {
    name               = "lambda_iam_role"
    assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_lambda_function" "lambda" {
    s3_bucket     = "lambda-artifacts"
    s3_key        = "${var.name}.zip"
    function_name = var.name
    description   = var.description
    role          = aws_iam_role.role_for_lambda.arn
    handler       = "index.handler"

    runtime = "nodejs14.x"

    environment {
        variables = var.env_vars
    }
}