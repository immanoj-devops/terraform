variable TEST {
  default     = "Hello World"
}

output name {
  value       = var.TEST

}

output names {
  value       = "The World Statement is ${var.TEST}"
}


output name {
  value       = ""
  sensitive   = true
  description = "description"
  depends_on  = []
}


