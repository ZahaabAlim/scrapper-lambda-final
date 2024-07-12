# The AWS region and environment for this configuration
region = "us-east-1"
environment = "dev"

# A list of Lambda functions to be created. Each function is represented as a map.
lambda_functions = [
    {
        # Configuration for the first Lambda function 'my-lambda-dev-1'
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
        # Configuration for the second Lambda function 'my-lambda-dev-2'
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
