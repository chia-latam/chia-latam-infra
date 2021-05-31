output "zone_file" {
  value       = data.digitalocean_domain.domian.zone_file
  description = "Zone File"
}