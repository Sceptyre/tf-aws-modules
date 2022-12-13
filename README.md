# Basic AWS TF Modules

## Table Of Contents
- [http_api_gateway](#http_api_gateway)
- [http_api_gateway_route_lambda](#http_api_gateway_route_lambda)
- [lambda_from_s3_object](#lambda_from_s3_object)
- [on_demand_dynamodb_table](#on_demand_dynamodb_table)
- [private_bucket_with_object](#private_bucket_with_object)
- [scheduled_lambda_from_s3_object](#scheduled_lambda_from_s3_object)


### http_api_gateway
```tf
module "http_api_gateway"{
        source = "./http_api_gateway"
}
```

### http_api_gateway_route_lambda
```tf
module "http_api_gateway_route_lambda"{
        source = "./http_api_gateway_route_lambda"
}
```

### lambda_from_s3_object
```tf
module "lambda_from_s3_object"{
        source = "./lambda_from_s3_object"
}
```

### on_demand_dynamodb_table
```tf
module "on_demand_dynamodb_table"{
        source = "./on_demand_dynamodb_table"
}
```

### private_bucket_with_object
```tf
module "private_bucket_with_object"{
        source = "./private_bucket_with_object"
}
```

### scheduled_lambda_from_s3_object
```tf
module "scheduled_lambda_from_s3_object"{
        source = "./scheduled_lambda_from_s3_object"
}
```