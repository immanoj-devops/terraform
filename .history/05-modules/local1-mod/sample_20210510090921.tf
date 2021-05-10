resource "null_resource" sample {
   
   provisioner "local-exec" {
     command = "echo ${var.PUBLIC_IP}"
  }
}

variable "PUBLIC_IP" {}


 