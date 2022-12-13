resource "aws_lambda_permission" "lambda_permission" {
    statement_id = "${data.aws_lambda_function.lambda.function_name}-${replace(replace(var.route, " ", "-"), "/", "-")}"
    action = "lambda:InvokeFunction"
    function_name = data.aws_lambda_function.lambda.function_name
    principal = "apigateway.amazonaws.com"
    source_arn = "${data.aws_apigatewayv2_api.api_gateway.execution_arn}/*"
}