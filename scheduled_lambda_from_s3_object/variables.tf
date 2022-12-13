variable lambda_fn_name {}
variable lambda_handler {}
variable lambda_runtime {}
variable lambda_timeout { default = "3" }
variable lambda_memory { default = "128" }
variable lambda_schedule {}
variable lambda_env { 
    type = map 
    default = {}
}

variable s3_bucket {}
variable s3_object_key {}

variable role_arn {}

variable kms_key_arn {}

