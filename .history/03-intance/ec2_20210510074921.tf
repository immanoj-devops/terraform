provider "aws" {
    region      =       "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-079a3f3cf00741286"
  instance_type = "t2.micro"
}


output "webIp" {
    value       = "aws_instance.web.public_ip"
}