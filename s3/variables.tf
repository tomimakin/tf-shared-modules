variable "tags" {
    type        = map(string)
    description = "bucket Tags"
    default     = {}
}

variable "bucket_name" {
    type        = string
    description = "Name of s3 bucket"
}