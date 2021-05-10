variable TEST {
  default     = "Hello World"
}

output name {
  value       = ""
  sensitive   = true
  description = "description"
  depends_on  = []
}

