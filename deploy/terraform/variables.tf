variable "node_sku" {
  type    = string
  default = "Standard_B2s"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "client_secret" {
  type      = string
  sensitive = true
}
