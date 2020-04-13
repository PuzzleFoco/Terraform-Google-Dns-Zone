
resource "google_dns_managed_zone" "example_dns_zone" {
    name        = var.name
    dns_name    = var.dns_name
    description = var.description
    project     = var.project
}

resource "google_compute_address" "public_ip" {
    name    = var.public_ip_name
    project = var.project
    region  = var.location
}

resource "google_dns_record_set" "wildcard_subdomain" {
    name    = "*.${google_dns_managed_zone.example_dns_zone.dns_name}"
    type    = "A"
    ttl     = 300
    project = var.project

    managed_zone = google_dns_managed_zone.example_dns_zone.name

    rrdatas = [google_compute_address.public_ip.address]
}

resource "google_dns_record_set" "nameserver" {
    name    = google_dns_managed_zone.example_dns_zone.dns_name
    type    = "NS"
    ttl     = 21600
    project = var.project

    managed_zone = google_dns_managed_zone.example_dns_zone.name

    rrdatas = var.nameserverlist
}