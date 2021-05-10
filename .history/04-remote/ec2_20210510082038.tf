provider "aws" {
    region      =  "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terrafrom-learning-bucket"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table  = "terraform-lock"
  }
}

resource "aws_instance" "web1" {
  ami           = "ami-079a3f3cf00741286"
  instance_type = "t2.micro"
}


output public_ip {
    value       = "aws_instance.web1.public_ip"
}

