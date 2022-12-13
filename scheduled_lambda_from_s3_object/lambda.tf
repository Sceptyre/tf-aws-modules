module "lambda" {
    source = "../lambda_from_s3_object"

    lambda_fn_name = var.lambda_fn_name
    lambda_handler = var.lambda_handler
    lambda_memory = var.lambda_memory
    lambda_runtime = var.lambda_runtime
    lambda_timeout = var.lambda_timeout

    lambda_env = var.lambda_env

    s3_bucket = var.s3_bucket
    s3_object_key = var.s3_object_key

    kms_key_arn = var.kms_key_arn
}
