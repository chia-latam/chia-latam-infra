output "app_default_ingress" {
  value       = data.digitalocean_app.app.default_ingress
  description = "App Ingress"
}

output "app_live_url" {
  value       = data.digitalocean_app.app.live_url
  description = "App Live URL"
}

output "app_created_at" {
  value       = data.digitalocean_app.app.created_at
  description = "App Created"
}

output "app_updated_at" {
  value       = data.digitalocean_app.app.updated_at
  description = "App Created"
}