variable "domain" {
    type = string
    default = "chialatam.net"
}

variable "do_token" {
    type = string
}

variable "ip" {
    type = string
}

/** DO APP **/
variable "app_instance" {
    type = number
    default = 1
}

variable "app_size" {
    type = string
    default = "basic-xxs"
}

variable "app_name" {
    type = string
    default = "chia-latam-web"
}

variable "app_environment" {
    type = string
}

variable "app_src_repo" {
    type = string
}

variable "app_src_branch" {
    type = string
    default = "main"
}

variable "app_env_from_mail" {
    type = string
}

variable "app_env_from_name" {
    type = string
}

variable "app_env_to_email" {
    type = string
}

variable "app_env_sendgrid_api" {
    type = string
}

/* Servers DO */
/*variable "domain" {
  description = "The Droplet image ID or slug"
  default     = "wordpress-18-04"
}

variable "image" {
  description = "The Droplet image ID or slug"
  default     = "wordpress-18-04"
}

variable "name" {
  description = "The name of the Droplet"
  default     = "wordpress"
}

variable "region" {
  description = "The region of the Droplet"
  default     = "nyc1"
}

variable "size" {
  description = "The instance size"
  default     = "1gb"
}

variable "backups" {
  description = "Boolean controlling if backups are made"
  default     = false
}

variable "monitoring" {
  description = "Boolean controlling whether monitoring agent is installed"
  default     = false
}

variable "ipv6" {
  description = "Boolean controlling if IPv6 is enabled"
  default     = false
}

variable "private_networking" {
  description = "Boolean controlling if private networks are enabled"
  default     = false
}

variable "resize_disk" {
  description = "Boolean controlling whether to increase the disk size when resizing a Droplet"
  default     = true
}*/
/* FIN Server DO */