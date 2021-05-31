provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_domain" "public_domain" {
  name = var.domain
}