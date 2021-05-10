provider "aws" {
  region                  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "d54-terraform"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locking"
  }
}

module "local-module" {
  source = "./local"
}

module "local1" {
  source = "./local1"
  PUBLIC_IP = module.local-module.PUBLIC_IP
}