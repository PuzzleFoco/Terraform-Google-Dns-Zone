
resource "google_dns_managed_zone" "example_dns_zone" {
    name        = var.name
    dns_name    = var.dns_name
    description = var.description
    project     = var.project
}

// resource "google_dns_record_set" "dns" {
//     name    = "my-address.${data.google_dns_managed_zone.example_dns_zone.dns_name}"
//     type    = "TXT"
//     ttl     = 300

//     managed_zone = data.google_dns_managed_zone.example_dns_zone.name

//     rrdatas = ["test"]
// }