resource "aws_lambda_function" "lambda" {
    s3_bucket = var.s3_bucket
    s3_key = var.s3_object_key

    function_name    = var.lambda_fn_name
    role             = var.role_arn
    handler          = var.lambda_handler
    runtime          = var.lambda_runtime
    timeout          = var.lambda_timeout
    memory_size      = var.lambda_memory

    tracing_config {
        mode = "Active"
    }

    depends_on = [
        aws_cloudwatch_log_group.log_group
    ]

    environment {
        variables = var.lambda_env
    }
}