# cognito
resource "aws_cognito_user_pool" "main_pool" {
  name                     = var.user_pool_name
  alias_attributes         = ["email", "phone_number"]
  auto_verified_attributes = ["email"]
  mfa_configuration = "OPTIONAL"
  sms_authentication_message = "Your code is {####}"

  # sms_configuration {
  #   external_id    = "example"
  #   sns_caller_arn = aws_iam_role.example.arn
  #   sns_region     = "us-east-1"
  # }

  software_token_mfa_configuration {
    enabled = true
  }

  password_policy {
    minimum_length    = 16
    require_uppercase = true
    require_numbers   = true
    require_symbols   = true
  }

  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }

    recovery_mechanism {
      name     = "verified_phone_number"
      priority = 2
    }
  }
}
#### add this later
# resource "aws_cognito_identity_provider" "main_id_provider" {
#   user_pool_id  = aws_cognito_user_pool.main_pool.id
#   provider_name = "Google"
#   provider_type = "Google"

#   provider_details = {
#     authorize_scopes = "email"
#     client_id        = "your client_id"
#     client_secret    = "your client_secret"
#   }

#   attribute_mapping = {
#     email    = "email"
#     username = "sub"
#   }
# }