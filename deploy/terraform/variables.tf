variable "node_sku" {
  type    = string
  default = "Standard_B2s"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "CLIENT_SECRET" {
  type      = string
  sensitive = true
}
