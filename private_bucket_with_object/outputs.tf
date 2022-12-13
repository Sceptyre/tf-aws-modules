output bucket_name  { value = aws_s3_bucket.bucket.bucket }
output object_key   { value = aws_s3_object.bucket_object.key }