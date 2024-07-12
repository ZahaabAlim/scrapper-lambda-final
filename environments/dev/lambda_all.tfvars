region = "us-east-1"
environment = "dev"

lambda_functions = [
    {
        function_name       = "my-lambda-dev-1"
        handler             = "cost-explorer.lambda_handler"
        runtime             = "python3.10"
        timeout             = 60
        environment_variables = {
            STAGE = "dev"
        }
        s3_bucket_name      = "lambda-stored"
        s3_key              = "cost-explorer.zip"
    },
    {
        function_name       = "my-lambda-dev-2"
        handler             = "hello.lambda_handler"
        runtime             = "python3.10"
        timeout             = 30
        environment_variables = {
            STAGE = "dev"
        }
        s3_bucket_name      = "lambda-stored"
        s3_key              = "hello.zip"
    }
]