variable TEST {
  default     = "Hello World"
}

output name {
  value       = var.TEST

}

output name {
  value       = "The World Statement is ${var.TEST}"
}


variable "Tester-Name" {}
output name {
  value       = "Printing this variable from tfvars file ${var.Tester-Name}"
}


