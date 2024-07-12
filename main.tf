# The 'terraform' block configures the backend for Terraform state files. 
terraform {
  backend "s3" {
    bucket = "tf-state-bucket020"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

# This calls a module to create AWS Lambda functions. The module is located at './modules/lambdas'. It passes the environment, region, and a list of Lambda function configurations to the module.
module "lambda" {
  source              = "./modules/lambdas"
  environment         = var.environment
  region              = var.region
  lambda_functions    = var.lambda_functions
}
