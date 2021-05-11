provider "aws" {
    region      =  "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terrafrom-learning-bucket"
    key    = "dry/terraform.tfstate"
    region = "us-east-1"
    
  }
}

module "local1" {
  source = "./local1-mod"
}

module "local2" {
  source = "./local2-mod"
  PUBLIC_IP = "module.local-mod.PUBLIC_IP"
}



