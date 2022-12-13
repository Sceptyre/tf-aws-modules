resource aws_s3_bucket bucket {
    bucket = var.bucket_name
}

resource "aws_s3_bucket_logging" "bucket_logging" {
    bucket = aws_s3_bucket.bucket.bucket
    target_bucket = aws_s3_bucket.bucket.bucket
    target_prefix = "log/"
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
    bucket = aws_s3_bucket.bucket.bucket
    versioning_configuration {
        status = "Enabled"
    }
}

resource aws_s3_bucket_acl bucket_acl {
    bucket = aws_s3_bucket.bucket.id
    acl = "private"
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_server_side_encryption_configuration" {
  bucket = aws_s3_bucket.bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = var.kms_key_arn
    }
  }
}

resource "aws_s3_object" "bucket_object" {
    key         = var.object_path
    bucket      = aws_s3_bucket.bucket.id
    source      = var.input_file
}