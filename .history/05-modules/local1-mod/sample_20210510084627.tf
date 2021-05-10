resource "null_resource" sample {
   
   provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}


 