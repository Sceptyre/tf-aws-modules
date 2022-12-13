resource "aws_apigatewayv2_api" "api_gateway" {
    name                = var.api_gateway_name
    protocol_type       = "HTTP"
}

resource "aws_apigatewayv2_stage" "api_gateway_stage" {
    name                = "$default"  
    auto_deploy         = true
    api_id              = aws_apigatewayv2_api.api_gateway.id
    access_log_settings {
        destination_arn = aws_cloudwatch_log_group.log_group.arn
        format          = jsonencode({
                            "requestId" = "$context.requestId"
                            "extendedRequestId" = "$context.extendedRequestId"
                            "ip" = "$context.identity.sourceIp" 
                            "caller" = "$context.identity.caller" 
                            "user" = "$context.identity.user"
                            "requestTime" = "$context.requestTime"
                            "httpMethod" = "$context.httpMethod"
                            "resourcePath" = "$context.resourcePath"
                            "status" = "$context.status"
                            "protocol" = "$context.protocol"
                            "responseLength" = "$context.responseLength"
                            "path" = "$context.path"
                            "routeKey" = "$context.routeKey"
                        })
    }
}