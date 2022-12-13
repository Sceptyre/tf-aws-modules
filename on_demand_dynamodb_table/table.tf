resource "aws_dynamodb_table" "table" {
    name                = var.table_name
    hash_key            = var.hash_key
    billing_mode        = "PAY_PER_REQUEST"

    point_in_time_recovery {
        enabled = true
    }

    server_side_encryption {
        enabled = true
        kms_key_arn = var.kms_key_arn
    }

    attribute {
        name            = "id"
        type            = "N"
    }
}