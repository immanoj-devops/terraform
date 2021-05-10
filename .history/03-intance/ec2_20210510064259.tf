provider "aws" {
    region      =       "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-a1b2c3d4"
  instance_type = "t2.micro"
}