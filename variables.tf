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

variable "public_ip_name" {
  description = "Name of the Public IP Resource"
  type        = string
}

variable "project" {
  description = "The Project ID"
  type        = string
}

variable "location" {
  description = "The Google Cloud Region for the IP-Address (Should be the same as the Kubernetes Cluster)"
  type        = string
}

variable "nameserverlist" {
  description = "List for Google Nameservers to make them static"
  type        = list
  default     = ["ns-cloud-a1.googledomains.com.","ns-cloud-a2.googledomains.com.","ns-cloud-a3.googledomains.com.","ns-cloud-a4.googledomains.com.",]
}