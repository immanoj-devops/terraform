resource "aws_instance" "sample" {
  ami                     = "ami-079a3f3cf00741286"
  instance_type           = "t2.micro"
}

output "PUBLIC_IP" {
  value = aws_instance.sample.public_ip
}