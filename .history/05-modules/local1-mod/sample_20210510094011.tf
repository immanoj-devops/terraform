resource "null_resource" sample {
   
   provisioner "local-exec" {
     command = "echo ${var.PubIP}"
  }
}

variable "PubIP" {}


 