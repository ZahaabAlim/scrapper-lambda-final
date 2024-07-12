terraform {
  backend "s3" {
    bucket = "tf-state-bucket020"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "TfStatelock"
  }
}

provider "aws" {
  region = var.region
}
 
module "lambda" {
  source              = "./modules/lambdas"
  environment         = var.environment
  region              = var.region
  lambda_functions    = var.lambda_functions
}