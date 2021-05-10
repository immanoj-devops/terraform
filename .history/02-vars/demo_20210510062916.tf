variable TEST {
  default     = "Hello World"
}

output name {
  value       = var.TEST

}

output names {
  value       = "The World Statement is ${var.TEST}"
}


variable "CITY" {}

output cityName {
  value       = "City Name is ${var.CITY}"
}


