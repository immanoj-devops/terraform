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

module "local-module" {
  source = "./local-mod"
}

module "loca1-mod" {
  source = "./local1-mod"
  Public_IP = "module.local-mod.Public_IP"
}

