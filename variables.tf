variable "name" {
  description = "the name of the dns zone"
  type        = string
}

variable "dns_name" {
  description = "The Domain (e.g. example.com)"
  type        = string
}

variable "description" {
  description = "Description of the dns zone"
  type        = string
}

variable "project" {
  description = "The Project ID"
  type        = string
}