resource "aws_cloudwatch_event_rule" "schedule" {
    name = "sched-${var.lambda_fn_name}"
    description = "sched-${var.lambda_fn_name}"
    schedule_expression = var.lambda_schedule
}

resource "aws_cloudwatch_event_target" "lambda" {
    rule = aws_cloudwatch_event_rule.schedule.name
    target_id = "trgt-${var.lambda_fn_name}"
    arn = aws_lambda_function.lambda.arn
}