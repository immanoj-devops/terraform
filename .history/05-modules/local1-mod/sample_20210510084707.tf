resource "null_resource" sample {
   
   provisioner "local-exec" {
     command = "echo ${var.Public_IP}"
  }
}


variable "Public_IP" {
    
}

 