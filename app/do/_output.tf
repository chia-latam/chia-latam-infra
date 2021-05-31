output "app_default_ingress" {
  value       = data.digitalocean_app.app.default_ingress
  description = "App Ingress"
}