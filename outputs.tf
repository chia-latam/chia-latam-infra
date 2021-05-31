/*output "access_key_id" {
  description = "The Droplet ipv4 address"
  value       = module.servers.ip
}*/

output "domain_output" {
  description = "File Zone from chialatam.net"
  value = module.dns.zone_file
}

output "app_output" {
  description = "Info App"
  value = module.app.app_default_ingress
}