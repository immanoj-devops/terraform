resource "aws_instance" "web1" {
  ami           = "ami-079a3f3cf00741286"
  instance_type = "t2.micro"
}