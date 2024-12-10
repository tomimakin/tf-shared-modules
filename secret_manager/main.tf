# secret
resource "aws_secretsmanager_secret" "this_secret" {
  name   = var.secret_name
}

resource "aws_secretsmanager_secret_version" "this_secret_version" {
  secret_id     = aws_secretsmanager_secret.this_secret.id
  secret_string = var.secret_string
}

output "secret_value" {
  value = aws_secretsmanager_secret_version.this_secret_version.secret_string
}