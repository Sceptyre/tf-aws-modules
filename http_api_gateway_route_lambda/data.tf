data "aws_apigatewayv2_api" "api_gateway" {
    api_id = var.api_gateway_id
}

data "aws_lambda_function" "lambda" {
    function_name = var.lambda_fn_name
}

resource "random_id" "id" {
    byte_length = 8
}