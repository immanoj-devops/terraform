resource "null_resource" sample {
   
   provisioner "local-exec" {
     command = "echo ${var.Pub_IP}"
  }
}

variable "PUBLIC_IP" {}


 