resource "aws_cloudwatch_log_group" "log_group" {
    name = "/aws/apigateway/${var.api_gateway_name}"
    kms_key_id = var.kms_key_arn
}