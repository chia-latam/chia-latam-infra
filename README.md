# terraform-digitalocean-chia

Desarrollo de Modulos de Terraform para configurar la arquitectura de Chia Latam

# Module Input Variables

Defaults:

* `do_token` - Token API del usuario de digital Ocean.
* `domain` - Dominio principal en cuestion. En este caso chialatam.net.
* `ip` - IP de la app.
* `app_instance` - Cantidad de instancias de la app. `nyc1`
* `app_size` - Tamaño de la imagen en DO. Default: `basic-xxs`
* `app_name` - Nombre de la aplicación.
* `app_environment` - Tecnología de la aplicación definida en DO.
* `app_src_repo` - Link del repositorio en github.
* `app_src_branch` - Nombre del Branch utilizado. defaults to `master`
* `app_env_from_mail` - Mail utilizado para el From.
* `app_env_from_name` - Nombre utilizado para el From.
* `app_env_to_email` - Destino de los mails enviados de la web.
* `app_env_sendgrid_api` - Api Key de Sendgrid el servicio utilizado para enviar mails en la web

# Module Outputs

* `domain_output` - La zona del dominio
* `app_output` - URL de la APP gerada automaticamente.
* `app_live_url` - URL publica de la APP.
* `app_created_at` - Fecha de creación de la APP.
* `app_app_updated_at` - Fecha de actualización de la APP.

# Usage

## Generate a Personal Access Token

https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2#how-to-generate-a-personal-access-token

## Create a file

Create a file with a `.tf` extension, and add the following

```
module "wordpress" {
  source  = "alexandarp/wordpress/digitalocean"
  version = "1.0.7"
  name = "my-wordpress-droplet"
}
```

You can overwrite more default variables if you need to.

## Launching the Droplet

Initialize Terraform:

```
terraform init
```

Review your changes:

```
terraform plan
```

Apply your changes:

```
terraform apply -auto-approve
```

Output Droplet information:

```
terraform show
```

# Contribución

Si nos ayuda a contribuir a este repositorio, lo idea sería primero que discuta el cambio que desea realizar a través de un Issues de Github antes de hacer un Pull Request.