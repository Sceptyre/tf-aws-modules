resource "aws_apigatewayv2_route" "lambda_route" {
    api_id              = data.aws_apigatewayv2_api.api_gateway.api_id
    route_key           = var.route

    target              = "integrations/${aws_apigatewayv2_integration.lambda_integration.id}"
}