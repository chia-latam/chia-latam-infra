resource "digitalocean_app" "web" {

  spec {
    name    = var.app_name
    region  = "nyc"
    
    domain {
      name = "www.${var.domain}"
      type = "PRIMARY"
      zone = var.domain
    }

    domain {
      name = "${var.domain}"
      type = "ALIAS"
      zone = var.domain
    }

    service {
      name               = var.app_name
      environment_slug   = var.app_environment
      instance_count     = var.app_instance
      instance_size_slug = var.app_size

      github {
        branch         = var.app_src_branch
        deploy_on_push = true
        repo           = var.app_src_repo
      }

      source_dir = "/"
      http_port  = 80

      routes {
        path = "/"
      }

      env {
        key = "MAIL_FROM_MAIL"
        scope = "RUN_AND_BUILD_TIME"
        value = var.app_env_from_mail
      }

      env {
        key = "MAIL_FROM_NAME"
        scope = "RUN_AND_BUILD_TIME"
        value = var.app_env_from_name
      }

      env {
        key = "MAIL_TO"
        scope = "RUN_AND_BUILD_TIME"
        value = var.app_env_to_email
      }

      env {
        key = "SENDGRID_API_KEY"
        scope = "RUN_AND_BUILD_TIME"
        value = var.app_env_sendgrid_api
      }

      #run_command = "bin/api"
    }

    #static_site {
    #  name          = "web"
    #  build_command = "npm run build"
    #
    #  github {
    #    branch         = "main"
    #    deploy_on_push = true
    #    repo           = "username/repo"
    #  }
    #
    #  routes {
    #    path = "/"
    #  }
    #}

    #database {
    #  name       = "starter-db"
    #  engine     = "PG"
    #  production = false
    #}
  }

}

data "digitalocean_app" "app" {
  app_id = "32873a11-4602-44e6-96d8-7e0ca80bf49e"
}