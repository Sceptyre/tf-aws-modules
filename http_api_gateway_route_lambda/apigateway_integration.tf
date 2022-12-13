resource "aws_apigatewayv2_integration" "lambda_integration" {
  api_id           = data.aws_apigatewayv2_api.api_gateway.api_id
  integration_type = "AWS_PROXY"

  description               = ""
  integration_uri           = data.aws_lambda_function.lambda.invoke_arn
  payload_format_version = "2.0"
}