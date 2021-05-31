/*output "access_key_id" {
  description = "The Droplet ipv4 address"
  value       = module.servers.ip
}*/

output "domain_output" {
  description = "File Zone from chialatam.net"
  value = module.dns.zone_file
}

output "app_output" {
  description = "URL Creada por Digital Ocean"
  value = module.app.app_default_ingress
}

output "app_live_url" {
  value       = module.app.app_live_url
  description = "URL Principal"
}

output "app_created_at" {
  value       = module.app.app_created_at
  description = "Creación de la APP"
}
output "app_app_updated_at" {
  value       = module.app.app_updated_at
  description = "Úlitma actualización de la APP"
}