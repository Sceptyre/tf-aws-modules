# Basic AWS TF Modules

## Table Of Contents
[http_api_gateway](#http_api_gateway)
[lambda_from_s3_object](#lambda_from_s3_object)


### http_api_gateway
```tf
module "api_gateway" {
    source = "./http_api_gateway"
}
```
### lambda_from_s3_object