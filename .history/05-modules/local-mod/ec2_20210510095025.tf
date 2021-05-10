resource "aws_instance" "sample" {
  ami                     = "ami-0f04c68ac2c55e73e"
  instance_type           = "t2.micro"
}

output "PUBLIC_IP" {
  value = aws_instance.sample.public_ip
}