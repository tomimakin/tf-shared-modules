variable "name" {
  type        = string
  description = "Lambda function name"
}

variable "description" {
  type        = string
  description = "Description of the Lambda function"
  default     = ""
}

variable "env_vars" {
  type        = map(string)
  description = "Lambda function environment variables"
  default     = {
    foo = "bar"
  }
}