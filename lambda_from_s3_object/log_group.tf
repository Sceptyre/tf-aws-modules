resource aws_cloudwatch_log_group log_group {
    name = "/aws/lambda/${var.lambda_fn_name}"
    kms_key_id = var.kms_key_arn
}