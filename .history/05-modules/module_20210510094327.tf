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

module "local-mod" {
  source = "./local-mod"
}

module "local1-mod" {
  source = "./local1-mod"
  Pub_IP = "module.local-mod.PubIP"
}

