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

module "consul" {
  source = "./consul"
}


resource "aws_instance" "web1" {
  ami           = "ami-079a3f3cf00741286"
  instance_type = "t2.micro"
}