# The 'region' variable specifies the AWS region for deployment.
variable "region" {
    description = "The AWS region to deploy to"
    type = string
}

# The 'environment' variable specifies the environment (like dev, test, prod) for deployment.
variable "environment" {
    description = "The environment to deploy to"
    type = string
}

# The 'lambda_functions' variable is a list of configurations for each Lambda function to be deployed.
variable "lambda_functions" {
    description = "List of Lambda function configurations"
    type = list(object({
        function_name       = string
        handler             = string
        runtime             = string
        timeout             = number
        environment_variables = map(string)
        s3_bucket_name      = string
        s3_key              = string
    }))
}
