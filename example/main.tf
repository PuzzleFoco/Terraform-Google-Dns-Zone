provider "google" {
    credentials = file(var.filename)
    region  = "europe-west3"
    zone    = "europe-west3-a"
}

module "dns_zone" {
    source  = "../../terraform_google_dns_zone"

    name        = "google-example-dns-zone"
    dns_name    = "masterthesisexample.com."
    description = "Example DNS Zone"
    project     = var.project_id
}