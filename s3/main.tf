resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name

    tags   = var.tags

    lifecycle_rule {
        enabled = true
        abort_incomplete_multipart_upload_days = 7
    }
}