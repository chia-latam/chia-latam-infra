variable "domain" {
    type = string
}

variable "app_instance" {
    type = number
}

variable "app_size" {
    type = string
}

variable "app_name" {
    type = string
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