resource "aws_s3_bucket" "artifacts_bucket" {
    bucket = "lambda-artifacts"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name

    tags   = var.tags
}

# resource "aws_s3_bucket_lifecycle_configuration" "lifecycle_config" {
#   bucket = aws_s3_bucket.s3_bucket.id

#   rule {
#     id = "bucket-rule"

#     status = "Enabled"
#     abort_incomplete_multipart_upload {
#         days_after_initiation = 7
#     }
#   }
# }

# resource "aws_s3_bucket_versioning" "versioning_config" {
#   bucket = aws_s3_bucket.s3_bucket.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }