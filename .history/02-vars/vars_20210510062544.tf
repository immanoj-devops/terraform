variable TEST {
  default     = "Hello World"
}

output name {
  value       = var.TEST

}

output names {
  value       = "The World Statement is ${var.TEST}"
}


variable "Test"
output name {
  value       = "var.Tester-Name"
}

